<?php

use Illuminate\Database\Seeder;
use Carbon\Factory;
use App\Model\Room;
class RoomsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       Room::factory()->count(30)->create();
    }
}
