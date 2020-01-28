<?php



Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth'])->group(function(){
    Route::get('categories', 'CategoryController@index');
    Route::post('categories', 'CategoryController@store')->name('save-category');
    Route::get('categories/{id}', 'CategoryController@show');
    Route::get('tags', 'TagController@index');
    Route::post('tags', 'TagController@store')->name('save-tag');
    Route::get('tags/{id}', 'TagController@show');
    Route::get('comments', 'CommentController@index');
    Route::get('comments/{id}', 'CommentController@show');

});
Auth::routes(['verify' => true]);
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
