<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Contracts\Session\Session;


class LoginController extends Controller
{
    public function login(){
        return view('login',[
           'idpage'=>'login',
           'title'=>'User Login'
        ]);
    }

    public function authenticate(Request $request)
    {
        $credentials = $request->validate([
            'username' => ['required'],
            'password' => ['required'],
        ]);
 
        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            $request->session()->put('rolename', auth()->user()->hak_akses);
            return redirect()->intended('dashboard');
        }
 
        return back()->with('loginError','Invalid Login!');
    }

    public function logout(Request $request)
    {
        Auth::logout();     
        $request->session()->flush();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
    
}
