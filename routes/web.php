<?php


Route::get('/', function () {
    $posts = App\Post::all()->skip(10)->take(5);
    return view('home.index',compact('posts'));
});
Route::get('/mobile', 'DashboardController@mobile'); 

Route::middleware(['auth'])->group(function(){
    Route::get('/identitasdesa', 'DesaController@index');
    Route::get('/sejarahdesa', 'DesaController@sejarahdesa');
    Route::get('/wilayahdesa', 'DesaController@wilayahdesa');
    Route::get('/perangkatdesa', 'DesaController@perangkatdesa');
    Route::get('/kegiatan', 'InfoController@kegiatan');
    Route::get('/berita', 'InfoController@berita');
    Route::get('/layanan', 'PelayananController@layanan');
    Route::get('/laporan', 'PelayananController@laporan');
    Route::get('/saran', 'PelayananController@saran');
    Route::get('/profiluser', 'AkunController@index');
    Route::get('/pendaftaranusaha', 'AkunController@pendaftaranusaha');
    Route::get('/penduduk/{id}/profil', 'PendudukController@profil');
    Route::get('/dashboard', 'DashboardController@index'); 

    Route::get('/application', 'SettingController@application');

    Route::get('/barang', 'MasterController@barang');
    Route::get('/kategori', 'MasterController@kategori');
    Route::get('/brand', 'MasterController@brand');
    
    Route::get('/project', 'ProjectController@index');

    Route::get('categories', 'CategoryController@index');
    Route::post('categories', 'CategoryController@store')->name('save-category');
    Route::get('categories/{id}', 'CategoryController@show');
    Route::get('tags', 'TagController@index');
    Route::post('tags', 'TagController@store')->name('save-tag');
    Route::get('tags/{id}', 'TagController@show');
    Route::get('comments', 'CommentController@index');
    Route::get('comments/{id}', 'CommentController@show');

    Route::get('users', 'UserController@index');
    
    Route::get('posts', 'PostController@index');
    Route::get('posts/{id}', 'PostController@show');
    Route::get('/posts/add', [
        'uses'=>'PostsController@add',
        'as'=>'posts.add'
        ]);
    Route::post('/posts/create', [
        'uses'=>'PostsController@create',
        'as'=>'posts.create'
        ]);
    Route::post('/posts/category', 'PostsController@category');

});
Auth::routes(['verify' => true]);
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/{title}',[
    'uses' => 'HomeController@singlepost',
    'as' => 'site.single.post'
]);