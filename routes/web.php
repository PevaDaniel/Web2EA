<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\DatabaseController;
use App\Http\Controllers\CrudController;

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/database', [DatabaseController::class, 'index'])->name('database');
Route::resource('crud', CrudController::class);
Route::get('/chart', [App\Http\Controllers\PageController::class, 'chart'])
    ->name('chart');

Route::get('/contact', [ContactController::class, 'index'])->name('contact');
Route::post('/contact', [ContactController::class, 'store'])->name('contact');

// Messages (auth)
Route::get('/messages', [MessageController::class, 'index'])
    ->middleware('auth')
    ->name('messages');

// Admin (auth + role check)
Route::get('/admin', [AdminController::class, 'index'])
    ->middleware('auth')
    ->name('admin');


// Auth
Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('/register', [RegisterController::class, 'register']);
