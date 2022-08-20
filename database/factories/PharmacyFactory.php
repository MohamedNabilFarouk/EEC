<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\Pharmacy;
use Faker\Generator as Faker;

$factory->define(Pharmacy::class, function (Faker $faker) {
    return [
        'name' => $faker->sentence(3, true),
        'address' => $faker->sentence(5, true),
    ];
});
