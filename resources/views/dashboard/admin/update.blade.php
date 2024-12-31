@extends('layouts.master')
@section('title', 'Tambah Data Pengguna')
@section('container')
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Ubah Data Pengguna</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Pengguna</li>
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
                <form action="{{ '/role/ubah/'.$admin->id }}" method="POST" enctype="multipart/form-data" class="form form-vertical">
                    @csrf
                    <div class="form-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="name">Nama Pengguna</label>
                                    <div class="@error('name')  border-red-400  @enderror">
                                        <input type="text" id="name" class="form-control"
                                        placeholder="Masukkan Nama Kategori" name="name" value="{{$admin->name}}">
                                    </div>
                                </div>
                                @error('name')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="email">Email Pengguna</label>
                                    <div class="@error('email')  border-red-400  @enderror">
                                        <input type="text" id="email" class="form-control"
                                        placeholder="Masukkan Email Kategori" name="email" value="{{$admin->email}}">
                                    </div>
                                </div>
                                @error('email')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="role">Pilih Peran</label>
                                    <select class="@error('role')  border-red-400  @enderror form-control" id="role" name="role">
                                        <option value="admin" {{ $admin->role == 'admin' ? 'selected' : '' }}>Admin</option>
                                        <option value="kepalagudang" {{ $admin->role == 'kepalagudang' ? 'selected' : '' }}>Kepala Gudang</option>
                                        <option value="officer" {{ $admin->role == 'officer' ? 'selected' : '' }}>Petugas</option>
                                    </select>
                                </div>
                                @error('role')
                                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                                @enderror
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="password">Password Pengguna</label>
                                    <div class="@error('password')  border-red-400  @enderror">
                                        <input type="text" id="password" class="form-control"
                                        placeholder="Masukkan Password" name="password" value="{{old('password')}}">
                                    </div>
                                </div>
                                @error('password')
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