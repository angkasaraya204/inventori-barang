<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('detstockop', function (Blueprint $table) {
            $table->id('id');
            $table->date('tanggal');
            $table->foreignId('id_products')->constrained('products')->onUpdate('cascade')->onDelete('cascade'); // Pastikan tabel barang sudah ada
            $table->integer('stok_real');
            $table->text('keterangan')->nullable();
            $table->string('kondisi')->nullable();
            $table->string('status')->default('pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detstockop');
    }
};
