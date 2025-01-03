@extends('layouts.master')
@section('title', 'Data Pengguna')
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
                <h3>Data Pengguna</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Pengguna</li>
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
                            <a href="{{ '/role/input/' }}" class="btn btn-dark">Tambah Data</a>
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
                                <td>No</td>
                                <td>Nama Admin</td>
                                <td>Email</td>
                                <td>Peran</td>
                                <td>Aksi</td>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $noAdmin = 1;
                            @endphp
                            @foreach ($admins as $admin)
                            <tr>
                                <td>{{$noAdmin}}</td>
                                <td>{{$admin->name}}</td>
                                <td>{{$admin->email}}</td>
                                <td>{{$admin->role}}</td>
                                <td>
                                    <div class="dropdown">
                                        <button class="btn btn-dark dropdown-toggle me-1" id="aksiprod" type="button"
                                            id="dropdownMenuButton" data-bs-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="btn-delete-role dropdown-item" data-id="{{$admin->id}}">
                                                <span class="fa-fw select-all fas"></span> Hapus
                                            </a>
                                            <a class="dropdown-item" href="{{ '/role/ubah/'.$admin->id }}">
                                                <span class="fa-fw select-all fas"></span> Edit
                                            </a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            @php
                                $noAdmin++;
                            @endphp
                            @endforeach
                        </tbody>
                    </table>
                    <div class="mt-5">
                        {{$admins->links('pagination::tailwind')}}
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection