<?php

use Illuminate\Support\Facades\{Route, Auth};
use App\Http\Controllers\HomeController;
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
    return view('welcome');
});
Route::get('/index', function () {
    return view('adminLayout/index');
});
Route::get('/master', function () {
    return view('master');
});
Route::get('/list', [HomeController::class, 'list'])->name('list');
Route::get('list/detaill/{mahasiswa:slug}', [HomeController::class, 'detaill']);
Route::patch('list/update/{mahasiswa:slug}', [HomeController::class, 'update']);
Route::delete('list/delete/{mahasiswa:slug}', [HomeController::class, 'delete']);
Route::get('/Dosen', [HomeController::class, 'Dosen'])->name('Dosen');
Route::get('/createmhs', [HomeController::class, 'create']);
Route::post('/store', [HomeController::class, 'store']);
Route::get('/organisasi', [HomeController::class, 'organization'])->name('organization');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
