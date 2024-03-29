<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    return [
        'title' => $faker->sentences,
        'content' => $faker->paragraph,
        'post_type' => 'text',
        'author_id' => $faker->numberBetween(1,100),
        'category_id' => $faker->numberBetween(1,10),
    ];
});
