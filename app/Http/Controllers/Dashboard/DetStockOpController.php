<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\DetStockOp;
use App\Models\StockOp;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DetStockOpController extends Controller
{
    public function indexDetStockop()
    {
        $detstockOp = DetStockOp::with(['stockop', 'product'])->paginate(10);
        return view('dashboard.detail_stockop.index', ['detstockOp'=>$detstockOp]);
    }

    public function createDetStockop()
    {
        return view('dashboard.detail_stockop.input');
    }

    public function storeDetStockop(Request $request)
    {
        $request->validate([
            'id_stockop' => 'required|exists:stockop,id',
            'id_products' => 'required|exists:products,id', // Pastikan tabel barang ada
            'stok_real' => 'required|integer',
            'selisih' => 'required|integer',
        ]);

        $detstockOp = DetStockOp::create($request->all());
        return redirect('/detstockop')->with('message','data berhasil ditambahkan');
    }

    public function editDetStockop($id)
    {
        $detstockOp = DetStockOp::with(['stockop', 'product'])->findOrFail($id);
        return view('dashboard.detail_stockop.update', ['detstockOp'=>$detstockOp]);
    }

    public function updateDetStockop(Request $request, $id)
    {
        $request->validate([
            'id_stockop' => 'required|exists:stockop,id',
            'id_products' => 'required|exists:products,id', // Pastikan tabel barang ada
            'stok_real' => 'required|integer',
            'selisih' => 'required|integer',
        ]);

        $detstockOp = DetStockOp::findOrFail($id);
        $detstockOp->update($request->all());
        return redirect('/detstockop')->with('message','data berhasil ubah');
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
}
