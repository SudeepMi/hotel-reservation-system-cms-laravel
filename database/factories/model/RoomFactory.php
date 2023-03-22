<?php

namespace Database\Factories\Model;

use App\Model\Room;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class RoomFactory extends Factory{


    
    /*
    |--------------------------------------------------------------------------
    | Model Factories
    |--------------------------------------------------------------------------
    |
    | This directory should contain each of the model factory definitions for
    | your application. Factories provide a convenient way to generate new
    | model instances for testing / seeding your application's database.
    |
    */
    protected $model = \App\Model\Room::class;
    
    public function definition() {
        static $number = 1;
        return [
            'room_number' => $number++,
            'description' => $this->faker->word,
            'available' => TRUE,
            'status' => TRUE,
            'room_type_id' => $this->faker->numberBetween($min = 1, $max = 6),
        ];
    }
        
}