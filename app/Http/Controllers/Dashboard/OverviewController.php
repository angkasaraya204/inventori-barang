<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductSupplies;
use App\Models\Supplier;
use Illuminate\Http\Request;

class OverviewController extends Controller
{
    public function index () {
        $countProducts = Product::count();
        $countProductIncome = ProductSupplies::where('type', 'income')->count();
        $countProductOutcome = ProductSupplies::where('type', 'outcome')->count();
        $countPemasok = Supplier::count();
        return view('dashboard.overview.index',
         [
            'countProducts'=>$countProducts,
            'countProductIncome'=>$countProductIncome,
            'countProductOutcome'=>$countProductOutcome,
            'countPemasok'=>$countPemasok
        ]);
    }
}
