<?php

use Illuminate\Http\Request;

Route::get('categories','Api\CategoryApiController@index');
Route::get('categories/{id}/posts','Api\CategoryApiController@posts');

Route::get('posts','Api\PostApiController@index');
Route::get('authors','Api\UserApiController@index');
Route::get('authors/{id}/posts','Api\UserApiController@posts');
Route::get('tags','Api\TagApiController@index');
Route::get('tags/{id}/posts','Api\TagApiController@posts');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
