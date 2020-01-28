<?php

use App\Post;

Route::get('test', function () {
    $user = App\Category::find(1);
    return $user->posts;


});

Route::get('/', function () {
    return view('welcome');
});
Auth::routes(['verify' => true]);
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
