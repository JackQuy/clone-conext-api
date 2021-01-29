<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PlaceTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('places')->insert(
            [
                [
                    'name' => 'Ha Noi'
                ],
                [
                    'name' => 'Da Nang'
                ],
                [
                    'name' => 'Ho Chi Minh'
                ]
            ]
        );
    }
}
