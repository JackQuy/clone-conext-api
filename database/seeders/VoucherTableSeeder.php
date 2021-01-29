<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Date;
use Illuminate\Support\Facades\DB;

class VoucherTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('vouchers')->insert(
            [
                [
                    'title' => '[BeansWorkspace] GET FREE 2-DAY PASS TICKETS for CoNextor',
                    'is_expired' => new Date("31st Dec 2020"),
                    'image' => 'https://storage.googleapis.com/conext-production/19108943_99406985_35790756_17780126.png',
                    'description' => 'Welcome CoNextor to BeansWorkspace Beans offers customers 2-day free for using Workspace.',
                ],
                [
                    'title' => '[Hoian]15% discount when order food at Weavers Restaurant Hoi An',
                    'is_expired' => new Date("30th Nov 2020"),
                    'image' => 'https://storage.googleapis.com/conext-production/64997444_46246574_77800462_16390180.png',
                    'description' => 'In order to get the promo code, simply click on the Get Voucher button. The voucher will be sent directly to your registered email at Conext and just use it at Weavers Hoi An.'
                ],
                [
                    'title' => '20% off for every coffee orders at Nomad Space',
                    'is_expired' => new Date("30th Nov 2020"),
                    'image' => 'https://storage.googleapis.com/conext-production/15670774_70835628_34663649_14782329.png',
                    'description' => 'In order to get the promo code, simply click on the Get Voucher button. The voucher will be sent directly to your registered email at Conext.'
                ],
                [
                    'title' => '[ENOUVO SPACE] GET PROMO CODE 10% DISCOUNT FOR DAILY PASS',
                    'is_expired' => new Date("30th Oct 2020"),
                    'image' => 'https://storage.googleapis.com/conext-production/33562622_75803936_48752140_46239508.png',
                    'description' => 'Enouvo Space is running a special discount for member of Conext community in May 2020 with 10% off for daily pass. '
                ],
                [
                    'title' => '[DNC] Get promo code 20% discount for daily pass',
                    'is_expired' => new Date("30th Nov 2020"),
                    'image' => 'https://storage.googleapis.com/conext-production/61151640_41063916_81769667_72704808.png',
                    'description' => 'Conextor Daily pass with Only 60,000 VND (original price is 75,000 VND)'
                ],
            ]
        );
    }
}
