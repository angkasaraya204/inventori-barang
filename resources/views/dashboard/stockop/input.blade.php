@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Input Data StockOpname</h2>
        </div>

        <form action="/input-stockop" method="POST" enctype="multipart/form-data" class="w-1/2 mt-5">
            @csrf
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="tanggal">Tanggal</label>
                <div class="border-2 p-1 @error('tanggal')  border-red-400  @enderror">
                    <input name="tanggal" value="{{old('tanggal')}}" class="text-black w-full h-full focus:outline-none text-sm" id="tanggal" type="date">
                </div>
                @error('tanggal')
                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="keterangan">Keterangan</label>
                <div class="@error('keterangan')  border-red-400  @enderror border-2 p-1">
                    <input value="{{old('keterangan')}}"  name="keterangan" class="text-black text-sm w-full h-full focus:outline-none" id="keterangan" type="text">
                </div>
                @error('keterangan')
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

