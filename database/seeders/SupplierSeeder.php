<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SupplierSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('suppliers')->insert([
            'name' => "PT PBW",
            'address' => "Jakarta",
            'phone'=>'08123456789',
            'email'=>'pbw@gmailcom'
        ]);

        DB::table('suppliers')->insert([
            'name' => "PT PBW2",
            'address' => "Surabaya",
            'phone'=>'08123456789',
            'email'=>'pbw2@gmailcom'
        ]);
    }
}
