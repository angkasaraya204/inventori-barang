<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DetStockOp extends Model
{
    use HasFactory;

    protected $table = 'detstockop';

    protected $fillable = [
        'id_stockop',
        'id_products',
        'stok_real',
        'selisih',
    ];

    public function stockOp()
    {
        return $this->belongsTo(StockOp::class, 'id_stockop');
    }

    public function product()
    {
        return $this->belongsTo(Product::class, 'id_products'); // Pastikan Anda memiliki model Barang
    }
}