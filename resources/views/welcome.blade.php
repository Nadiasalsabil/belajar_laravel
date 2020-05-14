@extends('layouts.app')

@section('title')
  <title> Login | ICC </title>
@endsection

<div class="login-box">
    <div class="login-logo">
      <a href=""><b>Admin</b>ICC</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
      <p class="login-box-msg">Sign in to start your session</p>
  
      <form method="post" action="{{ route('login') }}" >
        @csrf

        @if(\Session::has('alert'))
       
            <font style="color:darkred"><b><center>{{Session::get('alert')}}</center></b></font>
          
          <br><br>
      @endif


        <div class="form-group has-feedback">
                <input type="username"  placeholder="Username" name="username" class="form-control {{ $errors->has('username') ? ' is-invalid' : '' }}" value="{{ old('email') }}" required autofocus>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            @if ($errors->has('username'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('username') }}</strong>
            </span>
            @endif
        </div>


        <div class="form-group has-feedback">
                <input type="password" name="password" placeholder="Password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" required>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          @if ($errors->has('password'))
          <span class="invalid-feedback" role="alert">
              <strong>{{ $errors->first('password') }}</strong>
          </span>
        @endif
        </div>



        <div class="row">
          <div class="col-xs-8">
            <div class="checkbox icheck">
              <label>
                <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}/> Remember Me
              </label>
            </div>
          </div>


          <!-- /.col -->
          <div class="col-xs-4">
            <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
  
      <div class="social-auth-links text-center">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
          Facebook</a>
        <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
          Google+</a>
      </div>
      <!-- /.social-auth-links -->
  
      <a href="#">I forgot my password</a><br>
      <a href="register.html" class="text-center">Register a new membership</a>
  
    </div>
    <!-- /.login-box-body -->
  </div>
  <!-- /.login-box -->