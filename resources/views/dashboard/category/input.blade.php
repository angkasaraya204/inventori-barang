@extends('layouts.master')
@section('title', 'Tambah Data Kategori')
@section('container')
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Tambah Data Kategori</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Kategori</li>
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
                <form action="{{ '/input-kategori' }}" method="POST" enctype="multipart/form-data" class="form form-vertical">
                    @csrf
                    <div class="form-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="name">Nama Kategori</label>
                                    <div class="@error('name')  border-red-400  @enderror">
                                        <input type="text" id="name" class="form-control"
                                        placeholder="Masukkan Nama Kategori" name="name" value="{{old('name')}}">
                                    </div>
                                </div>
                                @error('name')
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