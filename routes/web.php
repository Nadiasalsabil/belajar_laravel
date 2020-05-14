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

Route::get('/', 'LoginController@getLogin');
Route::get('/icc-login', 'LoginController@getLogin');
Route::post('/login', 'LoginController@login')->name('login');
Route::post('/logout', 'LoginController@logout')->name('logout');

Route::get('/icc-dashboard', 'HomeController@index')->name('icc-dashboard')->middleware('auth:user');


//Route Article

Route::prefix('article')->group(function(){

    Route::get('list', 'Article\ArticleController@index')->name('article.list')->middleware('auth:user');
    Route::get('create', 'Article\ArticleController@create')->name('article.create')->middleware('auth:user');
    Route::post('store', 'Article\ArticleController@store')->name('article.store')->middleware('auth:user');
    Route::get('show/{id}', 'Article\ArticleController@show')->name('article.show')->middleware('auth:user');
   
});


