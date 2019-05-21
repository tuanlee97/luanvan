<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
	public function getindex(){
		return view('page.index');
	} 
   public function gettours(){
   	return view('page.tours');
   }
   public function gethotels()
   {
   	return view('page.hotels');
   }
   public function getservices()
   {
   	return view('page.services');
   }
  
    public function getblog(){
   	return view('page.blog');
   }
   public function getabout(){
   	return view('page.about');
   }
    public function getchitiet_tour(){
   	return view('page.chitiet_tour');
   }
   public function gethotel_room(){
   	return view('page.hotel-room');
   }
}
