<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class LiveTable extends Controller
{
    function index()
    {
        return view('livetable');
    }

    function fetch_data(Request $request)
    {
        if($request->ajax())
        {
            $data = DB::table('quocgia')->orderBy('maquocgia','desc')->get();
            echo json_encode($data);
        }
    }

    function add_data(Request $request)
    {
        if($request->ajax())
        {
            $data = array(
                'maquocgia'    =>  $request->first_name,
                'tenquocgia'     =>  $request->last_name
            );
            $id = DB::table('quocgia')->insert($data);
            if($id > 0)
            {
                echo '<div class="alert alert-success">Data Inserted</div>';
            }
        } 
    }

    function update_data(Request $request)
    {
        if($request->ajax())
        {
            $data = array(
                $request->column_name       =>  $request->column_value
            );
            DB::table('quocgia')
                ->where('maquocgia', $request->id)
                ->update($data);
            echo '<div class="alert alert-success">Data Updated</div>';
        }
    }

    function delete_data(Request $request)
    {   
        if($request->ajax())
        {
            DB::table('quocgia')
                ->where('maquocgia', $request->id)
                ->delete();
            echo '<div class="alert alert-success">Data Deleted</div>';
        }
    }
}
?>
