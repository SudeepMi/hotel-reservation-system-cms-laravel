<?php

namespace Database\Factories\Model;

use Illuminate\Database\Eloquent\Factories\Factory;

class UserFactory extends Factory{


protected $model = \App\Model\User::class;

public function definition() {

    static $password;
    $gender = $this->faker->randomElement(['male', 'female', 'others']);

    if($gender == "female")
        $avatar = $this->faker->randomElement(['girl.png', 'girl-1.png', 'girl-2.png']);
    else
        $avatar = $this->faker->randomElement(['boy.png', 'boy-1.png', 'man.png', 'man-1.png', 'man-2.png', 'man-3.png']);
    return [
        'first_name' => $this->faker->firstName,
        'last_name' => $this->faker->lastName,
        'gender' => $gender,
        'phone' => $this->faker->isbn10(),
        'address' => $this->faker->address,
        'email' => $this->faker->unique()->safeEmail,
        'password' => bcrypt('password'),
        'avatar' => $avatar,
        'about' => $this->faker->word,
        'role' => 'user',
        'status' => TRUE,
        'remember_token' => rand(1000000000,9999999999),
    ];
}

}