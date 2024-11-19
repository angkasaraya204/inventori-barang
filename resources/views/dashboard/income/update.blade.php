@extends('layouts.master')
@section('title', 'Ubah Data Barang Masuk')
@section('container')
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Ubah Data Barang Masuk</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Barang Masuk</li>
                        <li class="breadcrumb-item active" aria-current="page">Ubah Data</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
            </div>
            <div class="card-body">
                <form action="/ubah-barang-masuk/{{$productIncome->id}}" method="POST" enctype="multipart/form-data" class="form form-vertical">
                    @csrf
                    <div class="form-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="product_id">Nama Barang</label>
                                    <div class="@error('product_id') border-red-400 @enderror">
                                        <select name="product_id" data-id-product="{{$productIncome->product_id}}" class="select-product form-select" id="product_id">
                                        </select>
                                    </div>
                                </div>
                                @error('product_id')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="supplier_id">Nama Pemasok</label>
                                    <div class="@error('supplier_id') border-red-400 @enderror">
                                        <select name="supplier_id" data-id-supplier="{{$productIncome->supplier_id}}" class="select-supplier form-select" id="supplier_id">
                                        </select>
                                    </div>
                                </div>
                                @error('supplier_id')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="quantity">Jumlah Barang Masuk</label>
                                    <div class="@error('quantity') border-red-400 @enderror">
                                        <input type="number" id="quantity" class="form-control" name="quantity" value="{{$productIncome->quantity}}">
                                    </div>
                                </div>
                                @error('quantity')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="date">Tanggal</label>
                                    <div class="@error('date') border-red-400 @enderror">
                                        <input type="date" id="date" class="form-control" name="date" value="{{$productIncome->date}}">
                                    </div>
                                </div>
                                @error('date')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12 d-flex justify-content-end">
                                <button type="submit"
                                    class="btn btn-dark me-1 mb-1" id="aksiprod">Simpan Data</button>
                                <button type="reset"
                                    class="btn btn-light-secondary me-1 mb-1">Riset</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>
@endsection
@section('js')
    <script src="{{ asset('js/supplies/update.js') }}"></script>
@endsection