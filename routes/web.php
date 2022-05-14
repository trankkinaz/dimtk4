<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\DimensiController;
use App\Http\Controllers\JawabanController;
use App\Http\Controllers\KuesionerController;

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
    return view('home',[
        "idpage"=>"home",
        "title"=>"Laravel Apps"
    ]);
});


Route::get('/home', function () {
    return view('home',[
        "idpage"=>"home",
        "title"=>"Laravel Apps"
    ]);
});


Route::get('/login',[LoginController::class,'login'])->middleware('guest')->name('login');
Route::post('/login',[LoginController::class,'authenticate']);
Route::get('/dashboard',function () {
    return view('dashboard.index',[
        "idpage"=>"dashboard",
        "title"=>"User Dashboard"
    ]);
})->middleware('auth');
Route::get('/dummy',function () {
    return view('dashboard.dummy',[
        "idpage"=>"dummy",
        "title"=>"Some fancy menu"
    ]);
})->middleware('auth');

Route::get('/logout',[LoginController::class,'logout']);

//route by folder resources!
Route::resource('users',UserController::class)->middleware('auth');
Route::resource('dimensi',DimensiController::class)->middleware('auth');
Route::resource('kuesioner',KuesionerController::class)->middleware('auth');
Route::resource('jawaban',JawabanController::class)->middleware('auth');

//pasword changes
Route::get('/changePassword', [UserController::class, 'changePassword'])->name('changePassword')->middleware('auth');
Route::post('/changePassword', [UserController::class, 'changePasswordPost'])->name('changePasswordPost');
