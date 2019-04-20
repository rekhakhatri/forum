<?php

use Illuminate\Database\Seeder;
use App\Channel;

class ChannelsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $channel1 = ['title' => 'Laravel','slug' => str_slug('Laravel') ];
        $channel2 = ['title' => 'Vuejs','slug' => str_slug('Vuejs') ];
        $channel3 = ['title' => 'Wordpress','slug' => str_slug('Wordpress') ];
        $channel4 = ['title' => 'Nodejs','slug' => str_slug('Nodejs') ];
        $channel5 = ['title' => 'Codeigniter','slug' => str_slug('Codeigniter') ];
        $channel6 = ['title' => 'Symphony','slug' => str_slug('Symphony') ];
        $channel7 = ['title' => 'Express','slug' => str_slug('Express') ];
        $channel8 = ['title' => 'Jquery','slug' => str_slug('Jquery') ];

        Channel::create($channel1);
        Channel::create($channel2);
        Channel::create($channel3);
        Channel::create($channel4);
        Channel::create($channel5);
        Channel::create($channel6);
        Channel::create($channel7);
        Channel::create($channel8);
    }
}
