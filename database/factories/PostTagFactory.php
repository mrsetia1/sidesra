<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(Model::class, function (Faker $faker) {
    return [
        'post_id' => App\Posts::all()->random()->id,
        'tag_id' => App\Tags::all()->random()->id,
    ];
});
