<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use DB;

use App\Models\QuocGia;


class QuocgiaController extends Controller
{
    public function getDanhSach(){
    	$quocgia=QuocGia::all();
    	return view('admin.quocgia.danhsach',['quocgia'=>$quocgia]);
    }
   function Them(Request $request)
    {
        if($request->ajax())
        {
            $data = array(
                'maquocgia'    =>  $request->maquocgia,
                'tenquocgia'     =>  $request->tenquocgia
            );
            $id = DB::table('quocgia')->insert($data);
            if($id > 0)
            {
                echo '<div class="alert alert-success">Data Inserted</div>';
            }
        } 
    }
    
}
