<?php

namespace Database\Seeders;

use DateTime;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EventTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('events')->insert(
            [
                [
                    'title' => 'Roundtable: Marketing for Startups | Day 3 Leicester Startup Week',
                    'image' => 'https://storage.googleapis.com/conext-production/detail/75484029_30486229_78227126_81085093.png',
                    'start_day' => new DateTime("17:00 27th Jan 2021"),
                    'end_day' => new DateTime('18:30 27th Jan 2021'),
                    'online_event' => 'online event',
                ],
                [
                    'title' => 'Roundtable: Equity and Fundraising | Day 3 Leicester Startup Week',
                    'image' => 'https://storage.googleapis.com/conext-production/detail/55063696_27015733_72519007_53929857.png',
                    'start_day' => new DateTime("19:00 27th Jan 2021"),
                    'end_day' => new DateTime('20:30 27th Jan 2021'),
                    'online_event' => 'online event',
                ],
                [
                    'title' => 'Accelerator startups: Where are they now? | Day 4 Leicester Startup Week',
                    'image' => 'https://storage.googleapis.com/conext-production/detail/87378889_45338706_81330973_32753718.png',
                    'start_day' => new DateTime("19:30 28th Jan 2021"),
                    'end_day' => new DateTime('20:30 28th Jan 2021'),
                    'online_event' => 'online event',
                ],
                [
                    'title' => 'Codeup | Learn to Code Workshop: Python (Intro to Data Science)',
                    'image' => 'https://storage.googleapis.com/conext-production/detail/87378889_45338706_81330973_32753718.png',
                    'start_day' => new DateTime("23:00 30th Jan 2021"),
                    'end_day' => new DateTime('00:30 31st Jan 2021'),
                    'online_event' => 'online event',
                ],
            ]
        );
    }
}
