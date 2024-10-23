<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ProductExport;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Supplier;
use App\Models\Category;
use Illuminate\Support\Facades\Process;

class ProductController extends Controller
{
    public function index (Request $request) {
        if($request->has('search')){
            $products = DB::table('products')
            ->join('categories', 'products.category_id', '=' , 'categories.id')
            ->where('products.name', "LIKE","%{$request->search}%")
            ->select('products.*','categories.name as category')
            ->orderBy('products.created_at')
            ->paginate(10);
        } else {
             $products = DB::table('products')
            ->join('categories', 'products.category_id', '=' , 'categories.id')
            ->select('products.*','categories.name as category')
            ->orderBy('products.created_at')
            ->paginate(10);
        }

        return view('dashboard.products.index', ['products'=>$products]);
    }

    public function delete($id) {
        // Find the product by its ID
        $products = Product::findOrFail($id);
    
        // Check if the image file exists and delete it
        if (file_exists(public_path($products->image))) {
            unlink(public_path($products->image)); // Delete the image file from public/products
        }
    
        // Delete the product from the database
        $deletedProduct = $products->delete();
    
        // Check if the product was successfully deleted
        if ($deletedProduct) {
            // Flash a message and return a JSON response
            session()->flash('message', 'Berhasil hapus data');
            return response()->json(['message' => 'Success delete data'], 200);
        }
    
        // If something went wrong
        return response()->json(['message' => 'Failed to delete data'], 500);
    }

    public function create () {
        $category = Category::all();
        $supplier = Supplier::all();
        return view('dashboard.products.input', ['categories'=> $category, 'suppliers'=>$supplier]);
    }

    public function store(Request $request) {
        $validated = $this->validate($request, [
            'name' => ['required'],
            'price' => ['required'],
            'image' => ['required', 'image', 'max:1024'],
            'category_id' => ['required'],
        ]);
    
        // Ambil file gambar dari request
        $image = $request->file('image');
    
        // Tentukan nama file baru (bisa pakai original filename atau generate unik)
        $imageName = time() . '_' . $image->getClientOriginalName(); // Nama unik dengan timestamp
    
        // Simpan file di direktori public/products
        $image->move(public_path('products'), $imageName);
    
        // Simpan path ke database (path relatif, bukan absolut)
        $created = Product::create([
            'name' => $request->name,
            'price' => $request->price,
            'image' => 'products/' . $imageName, // Hanya path relatif yang disimpan
            'category_id' => $request->category_id,
        ]);
    
        if ($created) {
            return redirect('/barang')->with('message', 'Berhasil menambahkan data');
        }
    }

    public function edit ($id) {
        $products = Product::findOrFail($id);
        $category = Category::all();
        $supplier = Supplier::all();
        return view('dashboard.products.update', ["product"=>$products, 'categories'=>$category,'suppliers'=>$supplier]);
    }

    public function update (Request $request, $id) {
        // Validate the input data
        $validated = $this->validate($request, [
            'name' => ['required'],
            'price' => ['required'],
            'image' => ['nullable', 'image', 'max:1024'], // Image is nullable for update
            'category_id' => ['required'],
        ]);

        // Find the product by its ID
        $productWithId = Product::findOrFail($id);

        // If a new image is uploaded
        if ($request->hasFile('image')) {
            // Get the image from the request
            $image = $request->file('image');

            // Generate a unique name for the new image
            $imageName = time() . '_' . $image->getClientOriginalName(); // Create unique name with timestamp

            // Move the image to the 'public/products' directory
            $image->move(public_path('products'), $imageName);

            // Delete the old image if it exists
            if (file_exists(public_path($productWithId->image))) {
                unlink(public_path($productWithId->image)); // Delete the old image file
            }

            // Update the product with the new image path
            $productWithId->update([
                'name' => $request->name,
                'price' => $request->price,
                'image' => 'products/' . $imageName, // Store relative path to the new image
                'category_id' => $request->category_id,
            ]);
        } else {
            // If no new image is uploaded, update the rest of the fields without changing the image
            $productWithId->update([
                'name' => $request->name,
                'price' => $request->price,
                'category_id' => $request->category_id,
            ]);
        }

        return redirect('/barang')->with('message', 'Berhasil memperbarui data');
    }

    public function getAllProducts () {
        $products = Product::all();
        return response()->json(['data' => $products], 200);
    }

    public function exportExcel () {
        return Excel::download(new ProductExport, 'product.xlsx');
    }
}
