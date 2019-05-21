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


Route::get('tours',[
'as'=>'tours',
'uses'=>'PageController@gettours'
]);
Route::get('hotels',[
'as'=>'hotels',
'uses'=>'PageController@gethotels'
]);
Route::get('services',[
'as'=>'services',
'uses'=>'PageController@getservices'
]);

Route::get('/',[
'as'=>'index',
'uses'=>'PageController@getindex'
]);


Route::get('blog',[
'as'=>'blog',
'uses'=>'PageController@getblog'
]);

Route::get('about',[
'as'=>'about',
'uses'=>'PageController@getabout'
]);
Route::get('chitiet_tour',[
'as'=>'chitiet_tour',
'uses'=>'PageController@getchitiet_tour'
]);
Route::get('hotel-room',[
'as'=>'hotel-room',
'uses'=>'PageController@gethotel_room'
]);
Route::get('/redirectFB', 'SocialAuthFacebookController@redirect');
Route::get('/callbackFB', 'SocialAuthFacebookController@callback');

Route::get('/redirectGG', 'SocialAuthGoogleController@redirect');
Route::get('/callbackGG', 'SocialAuthGoogleController@callback');

Route::post('dangky',
    [
        'as'=>'dangky',
        'uses'=>'UserController@postRegister'
    ]
);

Route::post('dangnhap',
    [
        'as'=>'dangnhap',
        'uses'=>'UserController@postlogin'
    ]
);
Auth::routes();


