<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\StockOp;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class StockOpController extends Controller
{
    public function indexStockop()
    {
        $stockOp = StockOp::with('detstockop')->paginate(10);
        return view('dashboard.stockop.index', ['stockOp'=>$stockOp]);
    }

    public function createStockop()
    {
        return view('dashboard.stockop.input');
    }

    public function storeStockop(Request $request)
    {
        $request->validate([
            'tanggal' => 'required|date',
            'keterangan' => 'nullable|string',
        ]);

        $stockOp = StockOp::create($request->all());
        return redirect('/stockop')->with('message','data berhasil ditambahkan');
    }

    public function editStockop($id)
    {
        $stockOp = StockOp::with('detstockop')->findOrFail($id);
        return view('dashboard.stockop.update', ['stockOp'=>$stockOp]);
    }

    public function updateStockop(Request $request, $id)
    {
        $request->validate([
            'tanggal' => 'required|date',
            'keterangan' => 'nullable|string',
        ]);

        $stockOp = StockOp::findOrFail($id);
        $stockOp->update($request->all());
        return redirect('/stockop')->with('message','data berhasil diubah');
    }

    public function destroyStockop($id)
    {
        $stockOp = StockOp::findOrFail($id);
        $DelstockOp = $stockOp->delete();
        if ($DelstockOp) {
            // Flash a message and return a JSON response
            session()->flash('message', 'Berhasil hapus data');
            return response()->json(['message' => 'Success delete data'], 200);
        }
        return response()->json(['message' => 'Failed to delete data'], 500);
    }

    public function getAllStockOp () {
        $stockOp = StockOp::all();
        return response()->json(['data' => $stockOp], 200);
    }
}
