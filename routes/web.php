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

Route::get('/', function () {
    return view('home');
});

Route::get('/articoli', 'ArticoliController@index');

Route::get('/dettaglio/{id}', 'ArticoliController@getArticoloById');
Route::get('/articoli/foto/{id}', 'ArticoliController@galleria');
Route::post('articoli/foto/{id}', 'ArticoliController@uploadFoto')->middleware(['auth']);


Route::get('/articoli/add', 'ArticoliController@add')->middleware(['auth']);
Route::post('/articoli/add', 'ArticoliController@create')->middleware(['auth']);

Route::get('/articoli/edit/{id}', 'ArticoliController@edit')->middleware(['auth']);
Route::post('/articoli/edit/{id}', 'ArticoliController@save')->middleware(['auth']);

Route::get('/articoli/elimina/{id}', 'ArticoliController@elimina');

Route::get('/dashboard', 'ArticoliController@elencoArticoli')->middleware(['auth']);
Route::get('/logout', 'LogoutController@logout');


require __DIR__.'/auth.php';
