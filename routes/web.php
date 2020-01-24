<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'WelcomeController@index');

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home',function(){
    return redirect('/');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::group(['middleware'=>['auth']],function(){
    Route::resources([
        'productmodel'=>'ProductModelController',
        'order'=>'OrderController'
    ]);
    Route::get('/profile','UserController@profile')->name('profile');
});

Route::get('contact','WelcomeController@contact')->name('contact');
Route::get('productmodels/{id}/download','ProductModelController@download');
