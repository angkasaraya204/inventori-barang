@extends('layouts.master')
@section('title', 'Stok Barang')
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
                <h3>Stok Barang</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Stok Barang</li>
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
                            <a href="{{ '/stockop/input/' }}" class="btn btn-dark">Tambah Data</a>
                            @if(Auth::user()->role === 'kepalagudang' || Auth::user()->role === 'admin')
                                <a href="{{ '/stockop/excel/' }}" class="btn btn-dark">Ekspor Excel</a>
                            @endif
                        </div>
                    </div>
                    <div class="col-auto">
                        <form action="{{ url()->current() }}" method="GET" class="d-flex align-items-center">
                            <div class="form-group mb-0">
                                <input 
                                    type="date" 
                                    name="bydate" 
                                    class="form-control" 
                                    value="{{ request('bydate') }}">
                            </div>
                            <button type="submit" class="btn btn-primary text-secondary">Filter</button>
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
                                <th>Tanggal</th>
                                <th>Nama Barang</th>
                                <th>Stok Asli</th>
                                <th>Selisih</th>
                                <th>Total Masuk</th>
                                <th>Total Keluar</th>
                                <th>Stok Aktual</th>
                                <th>Kondisi</th>
                                <th>Keterangan</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $noStockop = 1;
                            @endphp
                            @foreach ($detstockOp as $detstocksOp)
                            <tr>
                                <td>{{$noStockop}}</td>
                                <td>{{$detstocksOp->tanggal}}</td>
                                <td>{{$detstocksOp->product->name}}</td>
                                <td>{{$detstocksOp->stok_asli}}</td>
                                <td>{{$detstocksOp->selisih}}</td>
                                <td>{{$detstocksOp->total_masuk}}</td>
                                <td>{{$detstocksOp->total_keluar}}</td>
                                <td>{{$detstocksOp->stok_aktual}}</td>
                                @if ($detstocksOp->kondisi == 'baik')
                                    <td>Baik</td>
                                @elseif ($detstocksOp->kondisi == 'rusak')
                                    <td>Rusak</td>
                                @elseif ($detstocksOp->kondisi == 'tidak_layak_pakai')
                                    <td>Tidak Layak Pakai</td>
                                @elseif ($detstocksOp->kondisi == 'hilang')
                                    <td>Hilang</td>
                                @endif
                                <td>{{$detstocksOp->keterangan}}</td>
                                <td>
                                    @if(Auth::user()->role === 'kepalagudang')
                                        <div class="dropdown">
                                            <button class="btn btn-dark dropdown-toggle me-1" id="aksiprod" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <!--<button type="submit" class="dropdown-item">-->
                                                <!--    <span class="fa-fw select-all fas"></span> Detail-->
                                                <!--</button>-->
                                                <!-- Setujui -->
                                                <form action="{{ '/stockop/approve/'.$detstocksOp->id }}" method="POST">
                                                    @csrf
                                                    <button type="submit" class="dropdown-item text-success">
                                                        <span class="fa-fw select-all fas"></span> Setujui
                                                    </button>
                                                </form>
                                                <!-- Tunda -->
                                                <form action="{{ '/stockop/pending/'.$detstocksOp->id }}" method="POST">
                                                    @csrf
                                                    <button type="submit" class="dropdown-item text-secondary">
                                                        <span class="fa-fw select-all fas"></span> Tunda
                                                    </button>
                                                </form>
                                                <!-- Tolak -->
                                                <form action="{{ '/stockop/reject/'.$detstocksOp->id }}" method="POST">
                                                    @csrf
                                                    <button type="submit" class="dropdown-item text-danger">
                                                        <span>✖</span> Tolak
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    @endif

                                    @if(Auth::user()->role === 'admin')
                                    <div class="dropdown">
                                        <button class="btn btn-dark dropdown-toggle me-1" id="aksiprod" type="button"
                                            id="dropdownMenuButton" data-bs-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="btn-delete-stockop dropdown-item" data-id="{{$detstocksOp->id}}">
                                                <span class="fa-fw select-all fas"></span> Hapus
                                            </a>
                                            <a class="dropdown-item" href="{{ '/stockop/ubah/'.$detstocksOp->id }}">
                                                <span class="fa-fw select-all fas"></span> Edit
                                            </a>
                                        </div>
                                    </div>
                                    @endif

                                    @if(Auth::user()->role === 'officer')
                                    <div class="badges">
                                        @if ($detstocksOp->status == 'approved')
                                            <span class="badge bg-success">Di Setujui</span>
                                        @elseif ($detstocksOp->status == 'pending')
                                            <span class="badge bg-secondary">Di Tunda</span>
                                        @elseif ($detstocksOp->status == 'rejected')
                                            <span class="badge bg-danger">Di Tolak</span>
                                        @endif
                                    </div>
                                    @endif
                                </td>
                            </tr>
                            @php
                                $noStockop++;
                            @endphp
                            @endforeach
                        </tbody>
                    </table>
                    <div class="mt-5">
                        {{$detstockOp->links('pagination::tailwind')}}
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection