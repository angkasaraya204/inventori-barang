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

// Rute untuk pengguna yang sudah login
Route::middleware('auth')->group(function () {

    // Halaman utama
    Route::get('/', [OverviewController::class, 'index'])->name('dashboard');

    // Barang
    Route::prefix('barang')->group(function () {
        Route::get('/', [ProductController::class, 'index']);
        Route::get('/input', [ProductController::class, 'create']);
        Route::post('/input', [ProductController::class, 'store']);
        Route::get('/ubah/{id}', [ProductController::class, 'edit']);
        Route::post('/ubah/{id}', [ProductController::class, 'update']);
        Route::delete('/hapus/{id}', [ProductController::class, 'delete']);
        Route::get('/semua', [ProductController::class, 'getAllProducts']);
        Route::get('/excel', [ProductController::class, 'exportExcel']);
    });

    // Supplier
    Route::prefix('supplier')->group(function () {
        Route::get('/', [SupplierController::class, 'index']);
        Route::get('/input', [SupplierController::class, 'create']);
        Route::post('/input', [SupplierController::class, 'store']);
        Route::get('/ubah/{id}', [SupplierController::class, 'edit']);
        Route::post('/ubah/{id}', [SupplierController::class, 'update']);
        Route::delete('/hapus/{id}', [SupplierController::class, 'delete']);
        Route::get('/semua', [SupplierController::class, 'getAllSuppliers']);
        Route::get('/excel', [SupplierController::class, 'exportExcel']);
    });

    // Kategori
    Route::prefix('kategori')->group(function () {
        Route::get('/', [CategoryController::class, 'index']);
        Route::get('/input', [CategoryController::class, 'create']);
        Route::post('/input', [CategoryController::class, 'store']);
        Route::get('/ubah/{id}', [CategoryController::class, 'edit']);
        Route::post('/ubah/{id}', [CategoryController::class, 'update']);
        Route::delete('/hapus/{id}', [CategoryController::class, 'delete']);
    });

    // Admin
    Route::middleware('role:admin')->prefix('role')->group(function () {
        Route::get('/', [UserController::class, 'admin']);
        Route::get('/input', [UserController::class, 'createAdmin']);
        Route::post('/input', [UserController::class, 'storeAdmin']);
        Route::get('/ubah/{id}', [UserController::class, 'editAdmin']);
        Route::post('/ubah/{id}', [UserController::class, 'updateAdmin']);
        Route::delete('/hapus/{id}', [UserController::class, 'deleteAdmin']);
    });

    // Barang Masuk & Keluar
    Route::prefix('barang')->group(function () {
        Route::prefix('masuk')->group(function () {
            Route::get('/', [ProductSuppliesController::class, 'indexIncome']);
            Route::get('/input', [ProductSuppliesController::class, 'createIncome']);
            Route::post('/input', [ProductSuppliesController::class, 'storeIncome']);
            Route::get('/ubah/{id}', [ProductSuppliesController::class, 'editIncome']);
            Route::post('/ubah/{id}', [ProductSuppliesController::class, 'updateIncome']);
            Route::delete('/hapus/{id}', [ProductSuppliesController::class, 'deleteProductSupply']);
        });

        Route::prefix('keluar')->group(function () {
            Route::get('/', [ProductSuppliesController::class, 'indexOutcome']);
            Route::get('/input', [ProductSuppliesController::class, 'createOutcome']);
            Route::post('/input', [ProductSuppliesController::class, 'storeOutcome']);
            Route::get('/ubah/{id}', [ProductSuppliesController::class, 'editOutcome']);
            Route::post('/ubah/{id}', [ProductSuppliesController::class, 'updateOutcome']);
            Route::delete('/hapus/{id}', [ProductSuppliesController::class, 'deleteProductSupply']);
        });
    });

    // Stok
    Route::prefix('stockop')->group(function () {
        Route::get('/', [DetStockOpController::class, 'indexDetStockop']);
        Route::get('/input', [DetStockOpController::class, 'createDetStockop']);
        Route::post('/input', [DetStockOpController::class, 'storeDetStockop']);
        Route::get('/ubah/{id}', [DetStockOpController::class, 'editDetStockop']);
        Route::post('/ubah/{id}', [DetStockOpController::class, 'updateDetStockop']);
        Route::delete('/hapus/{id}', [DetStockOpController::class, 'destroyDetStockop']);
        Route::get('/excel', [DetStockOpController::class, 'exportExcel']);
    });

    // Kepala Gudang
    Route::middleware('role:kepalagudang')->prefix('stockop')->group(function () {
        Route::post('/approve/{id}', [DetStockOpController::class, 'approve']);
        Route::post('/pending/{id}', [DetStockOpController::class, 'setPending']);
        Route::post('/reject/{id}', [DetStockOpController::class, 'reject']);
    });

    // Logout
    Route::get('/logout', [AuthController::class, 'logout']);
});

// Rute untuk tamu
Route::middleware('guest')->group(function () {
    Route::get('/login', [AuthController::class, 'index']);
    Route::post('/login', [AuthController::class, 'login'])->name('login');
});
