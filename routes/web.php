<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Dashboard\OverviewController;
use App\Http\Controllers\Dashboard\ProductController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Dashboard\CategoryController;
use App\Http\Controllers\Dashboard\ProductSuppliesController;
use App\Http\Controllers\Dashboard\SupplierController;
use App\Http\Controllers\Dashboard\UserController;
use App\Http\Controllers\Dashboard\DetStockOpController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::middleware('auth')->group(function () {
    Route::get('/', [OverviewController::class, 'index']);
    Route::get('/barang', [ProductController::class, 'index']);
    Route::get('/input-barang', [ProductController::class, 'create']);
    Route::delete('/hapus-barang/{id}', [ProductController::class, 'delete']);
    Route::post('/input-barang', [ProductController::class, 'store']);
    Route::get('/ubah-barang/{id}', [ProductController::class, 'edit']);
    Route::post('/ubah-barang/{id}', [ProductController::class, 'update']);
    Route::get('/all-products',[ProductController::class,'getAllProducts']);
    Route::get('/excel/products',[ProductController::class,'exportExcel']);

    Route::get('/supplier', [SupplierController::class,'index']);
    Route::delete('/hapus-supplier/{id}', [SupplierController::class, 'delete']);
    Route::get('/input-supplier', [SupplierController::class, 'create']);
    Route::post('/input-supplier', [SupplierController::class, 'store']);
    Route::get('/ubah-supplier/{id}', [SupplierController::class, 'edit']);
    Route::post('/ubah-supplier/{id}', [SupplierController::class, 'update']);
    Route::get('/all-suppliers',[SupplierController::class,'getAllSuppliers']);
    Route::get('/excel/suppliers',[SupplierController::class,'exportExcel']);

    Route::get('/kategori', [CategoryController::class, 'index']);
    Route::get('/input-kategori', [CategoryController::class, 'create']);
    Route::post('/input-kategori', [CategoryController::class, 'store']);
    Route::delete('/hapus-kategori/{id}', [CategoryController::class, 'delete']);
    Route::get('/ubah-kategori/{id}', [CategoryController::class, 'edit']);
    Route::post('/ubah-kategori/{id}', [CategoryController::class, 'update']);
    // Route::get('/excel/kategori',[CategoryController::class,'exportExcel']);


    Route::get('/role', [UserController::class, 'admin'])->middleware('role:admin');
    Route::get('/input-role', [UserController::class, 'createAdmin'])->middleware('role:admin');
    Route::post('/input-role', [UserController::class, 'storeAdmin'])->middleware('role:admin');
    Route::delete('/hapus-role/{id}', [UserController::class, 'deleteAdmin'])->middleware('role:admin');
    Route::get('/ubah-role/{id}', [UserController::class, 'editAdmin'])->middleware('role:admin');
    Route::post('/ubah-role/{id}', [UserController::class, 'updateAdmin'])->middleware('role:admin');

    Route::get('/barang-masuk', [ProductSuppliesController::class, 'indexIncome']);
    Route::get('/input-barang-masuk', [ProductSuppliesController::class, 'createIncome']);
    Route::get('/ubah-barang-masuk/{id}', [ProductSuppliesController::class, 'editIncome']);
    Route::post('/ubah-barang-masuk/{id}', [ProductSuppliesController::class, 'updateIncome']);
    Route::post('/input-barang-masuk', [ProductSuppliesController::class, 'storeIncome']);
    Route::delete('/hapus-barang-masuk/{id}', [ProductSuppliesController::class,'deleteProductSupply']);

    Route::get('/barang-keluar', [ProductSuppliesController::class, 'indexOutcome']);
    Route::get('/input-barang-keluar', [ProductSuppliesController::class, 'createOutcome']);
    Route::post('/input-barang-keluar', [ProductSuppliesController::class, 'storeOutcome']);
    Route::delete('/hapus-barang-keluar/{id}', [ProductSuppliesController::class,'deleteProductSupply']);
    Route::get('/ubah-barang-keluar/{id}', [ProductSuppliesController::class, 'editOutcome']);
    Route::post('/ubah-barang-keluar/{id}', [ProductSuppliesController::class, 'updateOutcome']);

    Route::get('/stockop', [DetStockOpController::class, 'indexDetStockop']);
    Route::get('/input-stockop', [DetStockOpController::class, 'createDetStockop']);
    Route::post('/input-stockop', [DetStockOpController::class, 'storeDetStockop']);
    Route::get('/ubah-stockop/{id}', [DetStockOpController::class, 'editDetStockop']);
    Route::post('/ubah-stockop/{id}', [DetStockOpController::class, 'updateDetStockop']);
    Route::delete('/hapus-stockop/{id}', [DetStockOpController::class, 'destroyDetStockop']);
    Route::get('/excel/stockop',[DetStockOpController::class,'exportExcel']);
    Route::post('/stockop/approve/{id}', [DetStockOpController::class, 'approve'])->middleware('role:kepalagudang');
    Route::post('/stockop/pending/{id}', [DetStockOpController::class, 'setPending'])->middleware('role:kepalagudang');
    Route::post('/stockop/reject/{id}', [DetStockOpController::class, 'reject'])->middleware('role:kepalagudang');

    Route::get('/logout',[AuthController::class, 'logout']);
});

Route::middleware('guest')->group(function() {
    Route::get('/login', [AuthController::class, 'index']);
    Route::post('/login', [AuthController::class, 'login'])->name('login');
});
