<?php

use Illuminate\Database\Seeder;

class UserstableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\User::create([
           'name' => 'admin',
           'password' => bcrypt('admin'),
           'email'  => 'admin@forum.in',
           'admin' => 1,
           'avatar' => asset('avatars/E4.jpg')
        ]);

        App\User::create([
            'name'      => 'Kiara Kapoor',
            'password'  =>  bcrypt('password'),
            'email'     => 'kiara45@gmail.com',
            'avatar'    => asset('avatars/E4.jpg')
            
        ]);
    }
}
