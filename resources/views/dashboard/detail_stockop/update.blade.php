@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Ubah Data Detail StockOpname</h2>
        </div>

        <form action="/ubah-detstockop/{{$detstockOp->id}}" enctype="multipart/form-data" method="POST" class="w-1/2 mt-5">
            @csrf
            <div class="flex gap-1 mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600"  for="id_stockop">Tanggal StockOpname</label>
                    <div class="border">
                        {{-- select with choice js --}}
                        <select name="id_stockop" data-id-tanggal="{{$detstockOp->id_stockop}}" class="select-tanggal text-black" id="id_stockop">
                        </select>
                    </div>
                </div>
            </div>
            <div class="flex gap-1 mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600"  for="id_products">Nama Produk</label>
                    <div class="border">
                        {{-- select with choice js --}}
                        <select name="id_products" data-id-product="{{$detstockOp->id_products}}" class="select-product text-black" id="id_products">
                        </select>
                    </div>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="stok_real">Stok Real</label>
                <div class="@error('stok_real')  border-red-400  @enderror border-2 p-1">
                    <input value="{{$detstockOp->stok_real}}"  name="stok_real" class="text-sm w-full h-full focus:outline-none" id="stok_real" type="number">
                </div>
                @error('stok_real')
                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="selisih">Selisih</label>
                <div class="@error('selisih')  border-red-400  @enderror border-2 p-1">
                    <input value="{{$detstockOp->selisih}}"  name="selisih" class="text-sm w-full h-full focus:outline-none" id="selisih" type="number">
                </div>
                @error('selisih')
                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                @enderror
            </div>
            <div class="mt-3">
                <button class="bg-gray-600 text-white w-full p-2 rounded text-sm">Simpan Data</button>
            </div>
        </div>
    </form>
    </div>
</div>
@endsection

@section('js')
    <script src="{{ asset('js/detstockop/update.js') }}"></script>
@endsection