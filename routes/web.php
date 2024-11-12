<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', [HomeController::class, 'homePage'])->name('home');

Route::get('/users', [HomeController::class, 'index'])->name('users.show');

Route::get('/about', [HomeController::class, 'aboutPage'])->name('about');
Route::get('/contact', [HomeController::class, 'contactPage'])->name('contact');
Route::get('/service', [HomeController::class, 'servicePage'])->name('service');
Route::get('/team', [HomeController::class, 'teamPage'])->name('team');
Route::get('/login', [HomeController::class, 'loginPage'])->name('login');
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::post('/logout', [AuthController::class, 'logout'])->name('logout')->middleware('auth');


Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard')->middleware('auth');

Route::get('/register', [HomeController::class, 'registerPage'])->name('register');
Route::post('/register', [AuthController::class, 'registerUser'])->name('register-user');

//Route::get('/about', function () {
//    return inertia::render('About',['user'=>'jhon']);
//});
//
//Route::get('/contact', function () {
//    return inertia::render('Contact');
//});
