<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductSupplies extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'user_id',
        'supplier_id',
        'date',
        'quantity',
        'type'
    ];

    public function supplier () {
        return $this->belongsTo(Supplier::class, 'supplier_id');
    }

    public function user () {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function product () {
        return $this->belongsTo(Product::class, 'product_id');
    }

}
