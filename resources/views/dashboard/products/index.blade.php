@extends('layouts.master')
@section('title', 'Data Barang')
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
                <h3>Data Barang</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Barang</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto">
                        <div class="buttons">
                            <a href="{{ '/barang/input' }}" class="btn btn-dark">Tambah Data</a>
                            @if(Auth::user()->role === 'kepalagudang')
                                <a href="{{ '/barang/excel' }}" class="btn btn-dark">Ekspor Excel</a>
                            @endif
                        </div>
                    </div>
                    <div class="col-auto">
                        <form action="{{ url()->current() }}" method="GET">
                            @csrf
                            <div class="form-group mb-0">
                                <input type="text" name="search" class="form-control" placeholder="Cari..." value="{{ request('search') }}">
                            </div>
                        </form>
                    </div>
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
                                <th>Total Harga Barang</th>
                                <th>Harga Per-Barang</th>
                                <th>Kategori Barang</th>
                                <th>Gambar Barang</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $noProduct = 1;
                            @endphp
                            @foreach ($products as $product)
                            <tr>
                                <td>{{$noProduct}}</td>
                                <td>{{$product->name}}</td>
                                <td>Rp.{{number_format($product->price * $product->stock,0) }}</td>
                                <td>Rp.{{number_format($product->price) }}</td>
                                <td>{{$product->category}}</td>
                                <td class="p-2 w-[100px]">
                                    <img src="{{ asset($product->image) }}" />
                                </td>
                                <td>
                                    <div class="dropdown">
                                        <button class="btn btn-dark dropdown-toggle me-1" id="aksiprod" type="button"
                                            id="dropdownMenuButton" data-bs-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="btn-delete-product dropdown-item" data-id="{{$product->id}}">
                                                <span class="fa-fw select-all fas"></span> Hapus
                                            </a>
                                            <a class="dropdown-item" href="{{ '/barang/ubah/'.$product->id }}">
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
                                $noProduct++;
                            @endphp
                            @endforeach
                        </tbody>
                    </table>
                    <div class="mt-5">
                        {{$products->links('pagination::tailwind')}}
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection