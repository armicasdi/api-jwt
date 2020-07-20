<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});




Route::group([
    'middleware' => 'api',
    'prefix' => 'auth',
], function () {

    //Rutas de Autenticacion en la ruta Auth por ejemplo /api/auth/login

    Route::post('login', 'ApiController@login');
    Route::post('register', 'ApiController@register');
    Route::get('logout', 'ApiController@logout');
});

Route::group([
    'middleware' => 'auth.jwt'
], function () {

    Route::get('user', 'ApiController@getAuthUser');
    Route::get('usuarios', 'UserController@index');
    Route::get('usuarios/{id}', 'UserController@search');
    Route::post('usuarios', 'UserController@store');
    Route::put('usuarios/{id}', 'UserController@update');
    Route::delete('usuarios/{id}', 'UserController@destroy');

    Route::get('productos', 'ProductoController@index');
    Route::get('productos/{id}', 'ProductoController@search');
    Route::post('productos', 'ProductoController@store');
    Route::put('productos/{id}', 'ProductoController@update');
    Route::delete('productos/{id}', 'ProductoController@destroy');
});

