<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ExpertiseTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('expertises')->insert(
            [
                ['name' => 'Artificial intelligence'],
                ['name' => 'Internet of Things'],
                ['name' => 'NGO'],
                ['name' => 'Hospitality'],
                ['name' => 'Real estate'],
                ['name' => 'Investment'],
                ['name' => 'Legacy'],
                ['name' => 'Marketing'],
                ['name' => 'Business & Management'],
            ]
        );
    }
}
