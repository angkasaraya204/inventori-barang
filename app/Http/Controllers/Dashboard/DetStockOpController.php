<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\DetStockOp;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\OpnameExport;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ProductSupplies;

class DetStockOpController extends Controller
{
    public function approve($id)
    {
        $this->updateStatus($id, 'approved');
        return redirect('/stockop')->with('message','data berhasil di setujui');
    }

    // Fungsi untuk mengubah status menjadi pending
    public function setPending($id)
    {
        $this->updateStatus($id, 'pending');
        return redirect('/stockop')->with('message','data berhasil di tunda');
    }

    // Fungsi untuk menolak entri stock opname
    public function reject($id)
    {
        $this->updateStatus($id, 'rejected');
        return redirect('/stockop')->with('message','data berhasil di tolak');
    }

    // Fungsi umum untuk memperbarui status
    private function updateStatus($id, $status)
    {
        if (auth()->user()->role != 'kepalagudang') {
            return redirect('/stockop')->with('error', 'Tidak Di izinkan');
        }

        $detstockOp = DetStockOp::findOrFail($id);
        $detstockOp->status = $status;
        $detstockOp->save();
    }

    public function indexDetStockop(Request $request)
    {
        // Filter berdasarkan tanggal jika ada
        $date = $request->input('bydate');

        // Ambil data dari tabel det_stock_op beserta relasi produk
        $detstockOpQuery = DetStockOp::with(['product']);

        if ($date !== null) {
            $detstockOpQuery->whereDate('created_at', $date);
        }

        $detstockOp = $detstockOpQuery->paginate(10);

        $barangMasuk = ProductSupplies::where('type', 'income')
        ->select('product_id')
        ->selectRaw('SUM(quantity) as total_masuk')
        ->groupBy('product_id')
        ->pluck('total_masuk', 'product_id'); // Hasilnya: [product_id => total_masuk]

        // Hitung total barang keluar berdasarkan type "outcome"
        $barangKeluar = ProductSupplies::where('type', 'outcome')
        ->select('product_id')
        ->selectRaw('SUM(quantity) as total_keluar')
        ->groupBy('product_id')
        ->pluck('total_keluar', 'product_id'); // Hasilnya: [product_id => total_keluar]

        // Gabungkan data barang masuk, keluar, dan stok asli ke dalam hasil detstockOp
        foreach ($detstockOp as $item) {
            // Ambil stok asli dari tabel det_stock_op
            $item->stok_asli = $item->stok_real; // stok_asli disimpan dalam kolom stok_real di det_stock_op
            
            // Hitung stok aktual menggunakan rumus: Stok Aktual = Stok Asli + Barang Masuk - Barang Keluar
            $item->total_masuk = $barangMasuk[$item->id_products] ?? 0;
            $item->total_keluar = $barangKeluar[$item->id_products] ?? 0;
            $item->stok_aktual = $item->stok_asli + $item->total_masuk - $item->total_keluar;

            // Hitung selisih antara stok aktual dan stok asli
            $item->selisih = $item->stok_aktual - $item->stok_asli;
        }

        return view('dashboard.detail_stockop.index', ['detstockOp' => $detstockOp]);
    }

    public function createDetStockop()
    {
        return view('dashboard.detail_stockop.input');
    }

    public function storeDetStockop(Request $request)
    {
        $request->validate([
            'tanggal' => 'required',
            'id_products' => 'required|exists:products,id', // Pastikan tabel barang ada
            'stok_real' => 'required|integer',
            'keterangan' => 'nullable',
        ]);

        $detstockOp = DetStockOp::create($request->all());
        return redirect('/stockop')->with('message','data berhasil ditambahkan');
    }

    public function editDetStockop($id)
    {
        $detstockOp = DetStockOp::with(['product'])->findOrFail($id);
        return view('dashboard.detail_stockop.update', ['detstockOp'=>$detstockOp]);
    }

    public function updateDetStockop(Request $request, $id)
    {
        $request->validate([
            'tanggal' => 'required',
            'id_products' => 'required|exists:products,id', // Pastikan tabel barang ada
            'stok_real' => 'required|integer',
            'keterangan' => 'nullable',
        ]);

        $detstockOp = DetStockOp::findOrFail($id);
        $detstockOp->update($request->all());
        return redirect('/stockop')->with('message','data berhasil ubah');
    }

    public function destroyDetStockop($id)
    {
        $detstockOp = DetStockOp::findOrFail($id);
        $DeldetstockOp = $detstockOp->delete();
        if ($DeldetstockOp) {
            // Flash a message and return a JSON response
            session()->flash('message', 'Berhasil hapus data');
            return response()->json(['message' => 'Success delete data'], 200);
        }
    }

    public function exportExcel () {
        return Excel::download(new OpnameExport, 'stockopname.xlsx');
    }
}
