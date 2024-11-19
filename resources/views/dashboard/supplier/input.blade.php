@extends('layouts.master')
@section('title', 'Tambah Data Pemasok')
@section('container')
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Tambah Data Pemasok</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Pemasok</li>
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
                <form action="{{ '/input-supplier' }}" method="POST" enctype="multipart/form-data" class="form form-vertical">
                    @csrf
                    <div class="form-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="name">Nama Pemasok</label>
                                    <div class="@error('name')  border-red-400  @enderror">
                                        <input type="text" id="name" class="form-control"
                                        placeholder="Masukkan Nama Pemasok" name="name" value="{{old('name')}}">
                                    </div>
                                </div>
                                @error('name')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="address">Alamat Pemasok</label>
                                    <div class="@error('address')  border-red-400  @enderror">
                                        <input type="text" id="address" class="form-control"
                                        placeholder="Masukkan Alamat" name="address" value="{{old('address')}}">
                                    </div>
                                </div>
                                @error('address')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="email">Email Pemasok</label>
                                    <div class="@error('email')  border-red-400  @enderror">
                                        <input type="email" placeholder="Masukkan Email" id="email" class="form-control" name="email" value="{{old('email')}}">
                                    </div>
                                </div>
                                @error('email')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="phone">Telepon Pemasok</label>
                                    <div class="@error('phone') border-red-400  @enderror">
                                        <div class="@error('phone') border-red-400  @enderror">
                                            <input type="text" id="phone" placeholder="Masukkan Nomer" class="form-control" name="phone" value="{{old('phone')}}">
                                        </div>
                                    </div>
                                </div>
                                @error('phone')
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