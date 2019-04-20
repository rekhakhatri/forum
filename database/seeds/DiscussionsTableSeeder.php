<?php

use Illuminate\Database\Seeder;
use App\Discussion;

class DiscussionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $t1 = 'Implementing OAUTH2 with Laravel passport';
        $t2 = 'Pagination in vuejs not working properly';
        $t3 = 'Vuejs event listener for child components';
        $t4 = 'Laravel homestead error - undetected database';

        $d1 = [
            'title'      => $t1,
            'content'    => 'Loreum ipsum dolor sit amet  ipsum dolor sit amet  ipsum dolor sit amet ',
            'channel_id' => 1,
            'user_id'    => 2,
            'slug'       => str_slug($t1)
        ];

        $d2 = [
            'title'      => $t2,
            'content'    => 'Vue JS pagination loreum ipsum dolor sit amet  ipsum dolor sit amet  ipsum dolor sit amet ',
            'channel_id' => 1,
            'user_id'    => 2,
            'slug'       => str_slug($t2)
        ];

        $d3 = [
            'title'      => $t3,
            'content'    => 'Event listener loreum ipsum dolor sit amet  ipsum dolor sit amet  ipsum dolor sit amet ',
            'channel_id' => 1,
            'user_id'    => 2,
            'slug'       => str_slug($t3)
        ];

        $d4 = [
            'title'      => $t4,
            'content'    => 'Laravel homestead lorem ipsum dolor sit amet  ipsum dolor sit amet  ipsum dolor sit amet ',
            'channel_id' => 5,
            'user_id'    => 2,
            'slug'       => str_slug($t4)
        ];

        Discussion::create($d1);
        Discussion::create($d2);
        Discussion::create($d3);
        Discussion::create($d4);

    }
}
