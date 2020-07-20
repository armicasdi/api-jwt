<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(\App\producto::class, function (Faker $faker) {
    return [
        'SKU'=> $faker->unique()->bothify('??######'),
        'nombre' => $faker->word,
        'cantidad'=>$faker->numberBetween($min = 1, $max = 1000),
        'precio' => $faker->randomFloat($nbMaxDecimals = 2, $min = 0, $max = 2000),
        'descripcion'=>$faker->realText($maxNbChars = 200, $indexSize = 2),
        'imagen' =>$faker->imageUrl($width = 640, $height = 480),
    ];
});
