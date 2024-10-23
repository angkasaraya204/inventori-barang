<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StockOp extends Model
{
    use HasFactory;

    protected $table = 'stockop';

    protected $fillable = [
        'tanggal',
        'keterangan',
    ];

    public function detstockop()
    {
        return $this->hasMany(DetStockOp::class, 'id_stockop');
    }
}
