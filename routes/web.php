<?php

use Illuminate\Support\Facades\Route;

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




Route::get('/', 'productController@allproducts')->name('Allproducts');



Route::resource('/product','productController');
Route::resource('/pharmacy','PharmacyController');
Route::get('/search', 'productController@search')->name('search');
Route::get('/Product/{id}', 'productController@show')->name('details');

