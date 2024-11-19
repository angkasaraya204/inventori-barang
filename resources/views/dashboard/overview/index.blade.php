@extends('layouts.master')
@section('title', 'Halaman Utama')
@section('container')
<div class="page-heading">
    <h3>Halaman Utama</h3>
</div>
<div class="page-content">
    <section class="row">
        <div class="col-12 col-lg-12">
            <div class="row">
                <!-- Card 1 -->
                <div class="col-12 col-lg-3 col-md-6 mb-4">
                    <div class="card w-100">
                        <div class="card-body px-3 py-4-5">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="stats-icon purple">
                                        <i class="iconly-boldShow"></i>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <h6 class="text-muted font-semibold">Jumlah Data <br>Barang</h6>
                                    <h6 class="font-extrabold mb-0">{{$countProducts}}</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Card 2 -->
                <div class="col-12 col-lg-3 col-md-6 mb-4">
                    <div class="card w-100">
                        <div class="card-body px-3 py-4-5">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="stats-icon blue">
                                        <i class="iconly-boldShow"></i>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <h6 class="text-muted font-semibold">Jumlah Data Barang Masuk</h6>
                                    <h6 class="font-extrabold mb-0">{{$countProductIncome}}</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        
                <!-- Card 3 -->
                <div class="col-12 col-lg-3 col-md-6 mb-4">
                    <div class="card w-100">
                        <div class="card-body px-3 py-4-5">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="stats-icon green">
                                        <i class="iconly-boldShow"></i>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <h6 class="text-muted font-semibold">Jumlah Data Barang Keluar</h6>
                                    <h6 class="font-extrabold mb-0">{{$countProductOutcome}}</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        
                <!-- Card 4 -->
                <div class="col-12 col-lg-3 col-md-6 mb-4">
                    <div class="card w-100">
                        <div class="card-body px-3 py-4-5">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="stats-icon red">
                                        <i class="iconly-boldShow"></i>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <h6 class="text-muted font-semibold">Jumlah Data Pemasok</h6>
                                    <h6 class="font-extrabold mb-0">{{$countPemasok}}</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection