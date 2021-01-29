<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
// use Database\Seeders\BusinessTypeTableSeeder;
use Database\Seeders\EventTableSeeder;
use Database\Seeders\ExploreSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        // BusinessTypeTableSeeder::class;
        // EventTableSeeder::class;
        // ExpertiseTableSeeder::class;
        // ExploreSeeder::class;
        // $this->call(VoucherTableSeeder::class);
        $this->call(UserTableSeeder::class);
    }
}
