<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'name' => "Admin",
            'email' => "admin@gmail.com",
            'password'=>Hash::make('admin'),
            'role'=>'admin'
        ]);

        DB::table('users')->insert([
            'name' => "Officer",
            'email' => "officer@gmail.com",
            'password'=>Hash::make('officer'),
            'role'=>'officer'
        ]);
        DB::table('users')->insert([
            'name' => "Kepala Gudang",
            'email' => "kepalagudang@gmail.com",
            'password'=>Hash::make('kepalagudang'),
            'role'=>'kepalagudang'
        ]);
    }
}
