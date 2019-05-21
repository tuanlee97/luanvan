	<!--Modal -->
 							 <div class="modal fade login" id="loginModal">
		      <div class="modal-dialog login animated">
    		      <div class="modal-content">
    		         <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Đăng nhập </h4>
                    </div>
                    <div class="modal-body">
                        <div class="box">
                             <div class="content">
                               
                                <div class="form loginBox">
                                	 <div class="social">
                                    
                                    <a id="google_login" class="circle google" href="{{url('/redirectGG')}}">
                                        <i class="fa fa-google-plus fa-fw"></i>
                                    </a>
                                    <a id="facebook_login" class="circle facebook" href="{{url('/redirectFB')}}">
                                        <i class="fa fa-facebook fa-fw"></i>
                                    </a>
                                </div>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span>hoặc</span>
                                    <div class="line r"></div>
                                </div>
                                <div class="error"></div>
                                    <form method="POST" enctype="multipart/form-data"  action="dangnhap">
                                        <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
                                <fieldset>
                                    <input id="email" class="form-control" type="email" placeholder="Email" name="email">
                                    <input id="password" class="form-control" type="password" placeholder="Mật khẩu" name="password"><br>
                                    <input class="btn btn-default btn-login" type="submit" value="Đăng nhập" onclick="loginAjax()"></fieldset>
                                    </form>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                            	  <div class="error"></div>
                                   @if(count($errors)>0)
                            <div class="alert alert-danger">        
                                    @foreach($errors->all() as $err)
                                        {{$err}}<br>
                                    @endforeach
                            </div>
                            @endif
        
                        @if(session('thongbao'))
                            <div class="alert alert-success">
                                {{session('thongbao')}}
                            </div>
                        @endif
                             <div class="form">
                                <form method="POST" enctype="multipart/form-data" data-remote="true" action="dangky">
                                    <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
                                <fieldset>
                                <input id="username" class="form-control" type="text" placeholder="Tên đăng nhập" name="username">
                                <input id="password" class="form-control" type="password" placeholder="Mật khẩu" name="password">
                                <input id="password_confirmation" class="form-control" type="password" placeholder="Nhập lại mật khẩu" name="password_confirmation">
                                <input id="email" class="form-control" type="email" placeholder="Email" name="email"><br>
                                <input class="btn btn-default btn-register" type="submit" value="Tạo tài khoản" name="commit"></fieldset>
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>Bạn chưa có tài khoản ?
                                 <a href="javascript: showRegisterForm();">ĐĂNG KÍ NGAY</a>
                            </span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span>Bạn đã có tài khoản ?</span>
                             <a href="javascript: showLoginForm();">ĐĂNG NHẬP NGAY</a>
                        </div>
                    </div>
    		      </div>
		      </div>
		  </div>
                        	<!--END Modal -->
	<div class="colorlib-loader"></div>

	<div id="page">

		<nav class="colorlib-nav" role="navigation">

			<!--Login/Logout-->
			
			<div>
						
              <div class="col-xs-6 col-md-4 col-md-offset-8">
                    <!-- Right Side Of Navbar -->
                    <ul style="float: right; margin-right: 30px">
                        <!-- Authentication Links -->
                    <!--     @guest -->

                            <li class="nav-item">
                                <button class="btn btn-primary btn-rounded" href="#"data-toggle="modal" data-target="#loginModal"><img src="images/login.png">Đăng nhập</button>
                            </li>

                          <!--   @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}"><img src="images/sign-up.png">{{ __('Đăng kí') }}</a>
                                </li>
                            @endif -->
                    <!--     @else -->
                           <!--  <li class="has-dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"><img src="images/logout.png">
                                        {{ __('Đăng xuất') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li> -->

              <!--           @endguest -->
                    </ul>
                </div>
            </div><br>

						<!--END Login/Logout-->
			<div class="top-menu">

				<div class="container-fluid">
					<div class="row">
						
						<div class="col-xs-1">
							<div id="colorlib-logo"><a href="{{route('index')}}">Tour</a></div>
						</div>
						<div class="col-xs-11 text-right menu-1">
							<ul>
								<li><a href="{{route('index')}}">Home</a></li>
								<li class="has-dropdown">
									<a href="{{route('tours')}}">Tours<span class="caret"></span></a>
									<ul class="dropdown">
										<li><a href="#">Destination</a></li>
										<li><a href="#">Cruises</a></li>
										<li><a href="#">Hotels</a></li>
										<li><a href="#">Booking</a></li>
									</ul>
								</li>
								<li><a href="{{route('hotels')}}">Hotels</a></li>
								<li><a href="{{route('services')}}">Services</a></li>
								<li><a href="{{route('blog')}}">Blog</a></li>
								<li><a href="{{route('about')}}">About</a></li>
                                @if(Auth::guard('web')->check())
                                <li class="has-dropdown">
                                    <a><img src="images/login.png">{{ Auth::user()->name }} <span class="caret"></span></a>
                                    <ul class="dropdown">
                                        <li>  <a class="btn btn-danger"  class="dropdown-item " href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Đăng xuất') }}
                                    </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form></li>
                                    </ul>
                                
                                </li>@endif
							</ul>
						</div>
					</div>

				</div>
			</div>
		</nav>

		