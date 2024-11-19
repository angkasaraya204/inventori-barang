@extends('layouts.master')
@section('title', 'Tambah Data Stok Barang')
@section('container')
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Tambah Data Barang</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Stok Barang</li>
                        <li class="breadcrumb-item active" aria-current="page">Tambah Data</li>
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
                <form action="{{ '/input-stockop' }}" method="POST" enctype="multipart/form-data" class="form form-vertical">
                    @csrf
                    <div class="form-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="tanggal">Tanggal</label>
                                    <div class="@error('tanggal')  border-red-400  @enderror">
                                        <input type="date" id="tanggal" class="form-control"
                                        placeholder="Masukkan Tanggal" name="tanggal" value="{{old('tanggal')}}">
                                    </div>
                                </div>
                                @error('tanggal')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="id_products">Produk</label>
                                    <div class="@error('id_products')  border-red-400  @enderror">
                                        <select name="id_products" class="select-product form-control" id="id_products">
                                        </select>
                                    </div>
                                </div>
                                @error('id_products')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="stok_real">Stok Asli</label>
                                    <div class="@error('stok_real')  border-red-400  @enderror">
                                        <input type="number" id="stok_real" class="form-control"
                                        placeholder="Masukkan Stok Asli" name="stok_real" value="{{old('stok_real')}}">
                                    </div>
                                </div>
                                @error('stok_real')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="kondisi">Kondisi Barang</label>
                                    <div class="@error('kondisi')  border-red-400  @enderror">
                                        <select name="kondisi" class="form-control">
                                            <option value="baik" {{ old('kondisi') == 'baik' ? 'selected' : '' }}>Baik</option>
                                            <option value="rusak" {{ old('kondisi') == 'rusak' ? 'selected' : '' }}>Rusak</option>
                                            <option value="tidak_layak_pakai" {{ old('kondisi') == 'tidak_layak_pakai' ? 'selected' : '' }}>Tidak Layak Pakai</option>
                                            <option value="hilang" {{ old('kondisi') == 'hilang' ? 'selected' : '' }}>Hilang</option>
                                        </select>
                                    </div>
                                </div>
                                @error('kondisi')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="keterangan">Keterangan</label>
                                    <div class="@error('keterangan')  border-red-400 @enderror">
                                        <input type="text" id="keterangan" class="form-control"
                                        placeholder="Masukkan Keterangan" name="keterangan" value="{{old('keterangan')}}">
                                    </div>
                                </div>
                                @error('keterangan')
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
    <script src="{{ asset('js/detstockop/input.js') }}"></script>
@endsection