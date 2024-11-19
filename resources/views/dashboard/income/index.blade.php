@extends('layouts.master')
@section('title', 'Data Barang Masuk')
@section('container')
@if (session('message'))
    <div id="toast-container" class="hidden fixed z-50 items-center w-full max-w-xs p-4 space-x-4 text-gray-500 bg-white divide-x divide-gray-200 rounded border-l-2 border-green-400 shadow top-5 right-5 dark:text-gray-400 dark:divide-gray-700 space-x dark:bg-gray-800" role="alert">
    <div class=" text-green-400 text-sm font-bold capitalize">{{session()->get('message')}}</div>
</div>
@endif
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Data Barang Masuk</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Barang Masuk</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                <div class="buttons">
                    <a href="{{ '/input-barang-masuk' }}" class="btn btn-dark">Tambah Data</a>
                </div>
            </div>
            <div class="card-body">
                <!-- Table with outer spacing -->
                <div class="table-responsive">
                    <table class="table table-bordered table-lg">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Barang</th>
                                <th>Nama Pemasok</th>
                                <th>Jumlah Barang Masuk</th>
                                <th>Tanggal</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $noIncome = 1;
                            @endphp
                            @foreach ($productsIncome as $productIncome)
                            <tr>
                                <td>{{$noIncome}}</td>
                                <td>{{$productIncome->product->name}}</td>
                                <td>{{$productIncome->supplier->name}}</td>
                                <td>{{$productIncome->quantity}}</td>
                                <td>{{$productIncome->date}}</td>
                                <td>
                                    <div class="dropdown">
                                        <button class="btn btn-dark dropdown-toggle me-1" id="aksiprod" type="button"
                                            id="dropdownMenuButton" data-bs-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="btn-delete-product-income dropdown-item" data-id="{{$productIncome->id}}">
                                                <span class="fa-fw select-all fas"></span> Hapus
                                            </a>
                                            <a class="dropdown-item" href="/ubah-barang-masuk/{{$productIncome->id}}">
                                                <span class="fa-fw select-all fas"></span> Edit
                                            </a>
                                        </div>
                                    </div>
                                    {{-- <button data-id="{{$product->id}}" class="btn-delete-product bg-red-500 py-1 px-4 rounded text-white">
                                        <i class="ri-delete-bin-line"></i>
                                    </button>
                                    <a href="/ubah-barang/{{$product->id}}" class="bg-yellow-400 py-1 px-4 rounded text-white">
                                        <i class="ri-edit-box-line"></i>
                                    </a> --}}
                                </td>
                            </tr>
                            @php
                                $noIncome++;
                            @endphp
                            @endforeach
                        </tbody>
                    </table>
                    <div class="mt-5">
                        {{$productsIncome->links('pagination::tailwind')}}
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection