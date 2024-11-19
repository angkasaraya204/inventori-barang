<?php

namespace App\Exports;

use App\Models\DetStockOp;
use App\Models\ProductSupplies;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Font;

class OpnameExport implements FromCollection, WithHeadings, WithStyles
{
    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {
        // Ambil data detstockop beserta informasi produk
        $detstockOp = DetStockOp::with(['product'])->get();

        // Hitung total barang masuk berdasarkan type "income" dan kelompokkan per product_id
        $barangMasuk = ProductSupplies::where('type', 'income')
            ->select('product_id')
            ->selectRaw('SUM(quantity) as total_masuk')
            ->groupBy('product_id')
            ->pluck('total_masuk', 'product_id'); // [product_id => total_masuk]

        // Hitung total barang keluar berdasarkan type "outcome" dan kelompokkan per product_id
        $barangKeluar = ProductSupplies::where('type', 'outcome')
            ->select('product_id')
            ->selectRaw('SUM(quantity) as total_keluar')
            ->groupBy('product_id')
            ->pluck('total_keluar', 'product_id'); // [product_id => total_keluar]

        // Persiapkan data untuk ekspor
        $data = $detstockOp->map(function ($item) use ($barangMasuk, $barangKeluar) {
            // Ambil stok asli dari tabel det_stock_op
            $stokAsli = $item->stok_real; // stok_asli disimpan dalam kolom stok_real di det_stock_op
            $totalMasuk = $barangMasuk[$item->id_products] ?? 0;
            $totalKeluar = $barangKeluar[$item->id_products] ?? 0;

            // Hitung stok aktual menggunakan rumus: Stok Aktual = Stok Asli + Barang Masuk - Barang Keluar
            $stokAktual = $stokAsli + $totalMasuk - $totalKeluar;

            // Hitung selisih antara stok aktual dan stok asli
            $selisih = $stokAktual - $stokAsli;

            // Kembalikan data yang akan diekspor
            return [
                'Tanggal' => $item->tanggal,
                'Nama Barang' => $item->product->name,
                'Stok Asli' => $stokAsli,
                'Total Masuk' => $totalMasuk,
                'Total Keluar' => $totalKeluar,
                'Stok Aktual' => $stokAktual,
                'Selisih' => $selisih,
                'Kondisi' => $item->kondisi,
                'Keterangan' => $item->keterangan
            ];
        });

        return $data;
    }

    /**
     * Menambahkan Heading untuk file Excel.
     *
     * @return array
     */
    public function headings(): array
    {
        return [
            'Tanggal', 
            'Nama Barang', 
            'Stok Asli', 
            'Total Masuk', 
            'Total Keluar', 
            'Stok Aktual', 
            'Selisih',
            'Kondisi',
            'Keterangan'
        ];
    }

    /**
     * Menambahkan style untuk tabel dan heading.
     *
     * @return array
     */
    public function styles($sheet)
    {
        // Menambahkan border ke seluruh tabel
        $sheet->getStyle('A1:I' . $sheet->getHighestRow())->applyFromArray([
            'borders' => [
                'allBorders' => [
                    'borderStyle' => Border::BORDER_THIN,
                    'color' => ['argb' => '000000'],
                ],
            ],
        ]);

        // Mengubah font heading menjadi bold
        $sheet->getStyle('A1:I1')->getFont()->setBold(true);

        return [
            // Menetapkan lebar kolom agar pas dengan data
            'A' => ['width' => 20],
            'B' => ['width' => 15],
            'C' => ['width' => 15],
            'D' => ['width' => 15],
            'E' => ['width' => 15],
            'F' => ['width' => 15],
            'G' => ['width' => 15],
            'H' => ['width' => 15],
            'I' => ['width' => 15],
        ];
    }
}