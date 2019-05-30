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
Route::get('chitiettour/{id}',[
'as'=>'chitiettour',
'uses'=>'PageController@getchitiettour'
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

Route::get('admin/dangxuat','UserController@getlogoutAdmin');

    Route::group(['prefix'=>'admin'],function(){
        Route::get('dangnhap','AdminController@getloginAdmin');
        Route::post('dangnhap','AdminController@postloginAdmin');
    });
//,'middleware'=>'adminLogin'
Route::group(['prefix'=>'admin'],function(){
    Route::get('trangchu','AdminController@gettrangchu');
    Route::group(['prefix'=>'tour'],function(){
      
        Route::get('danhsach','TourController@getDanhSach');

        Route::get('them','TourController@getThem');

        Route::get('sua/{id}','TourController@getSua');

        Route::post('them','TourController@XuLyThem');

        Route::post('sua/{id}','TourController@XuLySua');

        Route::get('xoa/{id}','TourController@XuLyXoa');
    });
 Route::group(['prefix'=>'livetable'],function(){
      
Route::get('/', 'LiveTable@index');
Route::get('fetch_data', 'LiveTable@fetch_data');
Route::post('add_data', 'LiveTable@add_data')->name('livetable.add_data');
Route::post('update_data', 'LiveTable@update_data')->name('livetable.update_data');
Route::post('delete_data', 'LiveTable@delete_data')->name('livetable.delete_data');
   });

 Route::group(['prefix'=>'quocgia'],function(){
      
         Route::get('/','QuocgiaController@getDanhSach');


 Route::post('them', 'QuocgiaController@Them')->name('them');

         Route::get('sua/{id}','QuocgiaController@getSua');

         
         Route::post('sua/{id}','QuocgiaController@XuLySua');

         Route::get('xoa/{id}','QuocgiaController@XuLyXoa');
     });


});



