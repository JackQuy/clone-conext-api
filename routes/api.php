<?php

use App\Http\Controllers\BusinessTypeController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\ExploreController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use phpDocumentor\Reflection\Types\Resource_;

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

Route::group(['prefix' => 'home'], function() {
    Route::resource('expertise', 'ExpertiseController');
    Route::resource('businessType', 'BusinessTypeController');
    Route::resource('explore', 'ExploreController');
});

Route::resource('event', 'EventController');


