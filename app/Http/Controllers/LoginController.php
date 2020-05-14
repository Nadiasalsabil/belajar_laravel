<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use Validator;
use Carbon\Carbon;
use Redirect;

class LoginController extends Controller
{
    public function getLogin()
    {
        return view('welcome');
    }

    public function login(Request $request)
    {
        // Validate the form data
        $this->validate($request, [
            'username' => 'required',
            'password' => 'required',
        ]);

        if (Auth::guard('user')->attempt([
            'username' => $request->username,
            'password' => $request->password
        ]))
        {

            $user = User::where('username', $request->username)->first();
            $user->last_login = Carbon::now();
            $user->save();

            return redirect()->intended('/icc-dashboard');
        }
        else{
            return Redirect::back()
                ->with('alert','Password atau Email, Salah !');
               
        };
    }

    
    public function logout()
    {
        if(Auth::guard('user')->check())
        {
            Auth::guard('user')->logout();
        }

        return redirect('/icc-login');
    }
}
