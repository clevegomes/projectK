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
Route::get('/', 'HomeController@index')->name('home');
Route::get('/subscriptions', 'HomeController@subscription')->name('subscriptions');
Route::post('/', 'HomeController@store');

//Route::get('/', function () {
//    return view('welcome');
//});

//Route::controllers([
//    'auth' => 'Auth\LoginController',
//    'password' => 'Auth\ForgotPasswordController',
//]);

Auth::routes();

//Route::get('/home2', 'HomeController@index')->name('home');
