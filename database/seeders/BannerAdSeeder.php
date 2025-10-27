<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BannerAdSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $banner_ads = array(
            array('id' => '1', 'banner_id' => 'banner_one'),
            array('id' => '2', 'banner_id' => 'banner_two'),
            array('id' => '3', 'banner_id' => 'banner_three'),
            array('id' => '4', 'banner_id' => 'banner_four'),
            array('id' => '5', 'banner_id' => 'banner_five'),
            array('id' => '6', 'banner_id' => 'banner_six'),
            array('id' => '7', 'banner_id' => 'banner_seven'),
            array('id' => '8', 'banner_id' => 'side_banner_one'),
            array('id' => '9', 'banner_id' => 'side_banner_two'),
            array('id' => '10', 'banner_id' => 'side_banner_three')
        );

        \DB::table('banner_ads')->insert($banner_ads);
    }
}
