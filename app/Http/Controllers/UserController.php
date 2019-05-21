<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\User;
class UserController extends Controller
{	
    public function postRegister(Request $request){
    
// $validator = Validator::make($request->all(), [
//             'username' => 'required',
//             'password' => 'required',
//             'password_confirmation' => 'required',
//             'email' => 'required',
//         ]);
        
//         if ($validator->fails())
//         {
//             return response()->json(['errors'=>$validator->errors()->all()]);
//         }
//    $khachhang = new User;
//    $khachhang->name = $request->username;
//    $khachhang->email = $request->email;
//    $khachhang->password = bcrypt($request->password);
//    $khachhang->save();
   
//         return response()->json(['success'=>'Data is successfully added']);
   $this->validate($request,
     [
       'username' => 'required|min:5',
       'email'=>'required|email|unique:users,email',
       'password'=>'required|min:6|max:20',
       'password_confirmation'=>'required|same:password',
       
     ],
     [
       'username.required'=>'Bạn chưa nhập tên',
       'username.min'=>'Tên người dùng phải có ít nhất 5 kí tự',
       'email.required'=>'Bạn chưa nhập email',
       'email.unique'=>'Email đã tồn tại',
       'password.required'=>'Bạn chưa nhập mật khẩu',
       'password.min'=>'Mật khẩu phải có ít nhất 6 kí tự',
       'password.max'=>'Mật khẩu phải chỉ tối đa 20 kí tự',
       'password_confirmation.same'=>'Mật khẩu không trùng khớp',
      
     ]);

   $khachhang = new User;
   $khachhang->name = $request->username;
   $khachhang->email = $request->email;
   $khachhang->password = bcrypt($request->password);
   $khachhang->save();

   return redirect()->back()->with('thongbao','Đăng ký thành công');
 }
 public function postlogin(Request $request)
{
  $this->validate($request,
    [
      'email'=>'required',
      'password'=>'required|min:6|max:20',
    ],

    [
      'email.required'=>'Bạn chưa nhập Email',
      'password.required'=>'Bạn chưa nhập mật khẩu',
      'password.min'=>'Mật khẩu không được nhỏ hơn 6 kí tự',
      'password.max'=>'Mật khẩu không được lớn hơn 20 kí tự'

    ]);
  $login=['email'=>$request->email,'password'=>$request->password];
  if(Auth::attempt($login))
  {
    return redirect('/')->with('thongbao','Đăng nhập thành công');
  }
  else
  {
    return redirect('/')->with('thongbao','Đăng nhập thất bại');
  }
}
}
