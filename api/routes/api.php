<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::get('getemails', 'App\Http\Controllers\Api\EmailController@getemails');
Route::post('saveemail', 'App\Http\Controllers\Api\EmailController@saveemail');
Route::post('getemailssearch', 'App\Http\Controllers\Api\EmailController@getemailssearch');
Route::post('deleteemail', 'App\Http\Controllers\Api\EmailController@deleteemail');
