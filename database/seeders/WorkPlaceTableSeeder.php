<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class WorkPlaceTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('work_places')->insert(
            [
                [
                    'name' => 'DNC Danang Coworking Space',
                    'price' => '75,000',
                    'image' => 'https://storage.googleapis.com/conext-production/64775483_39945853_39110715_46208967.png',
                    'addresses_id' => 1
                ],
                [
                    'name' => 'IOT Space',
                    'price' => '80,000',
                    'image' => 'https://storage.googleapis.com/conext-production/16396435_63068963_50684597_26582124.png',
                    'addresses_id' => 2
                ],
                [
                    'name' => 'Beans Workspace',
                    'price' => '80,000',
                    'image' => 'https://storage.googleapis.com/conext-production/71602096_36013824_15011473_55468966.png',
                    'addresses_id' => 3
                ],
                [
                    'name' => 'Enouvo Space',
                    'price' => '100,000',
                    'image' => 'https://storage.googleapis.com/conext-production/27416586_12779950_26466304_11311539.png',
                    'addresses_id' => 4
                ],
                [
                    'name' => 'Nomad Space',
                    'price' => '120,000',
                    'image' => 'https://storage.googleapis.com/conext-production/69329038_61346515_30906458_22557038.png',
                    'addresses_id' => 5
                ],
            ]
        );
    }
}
