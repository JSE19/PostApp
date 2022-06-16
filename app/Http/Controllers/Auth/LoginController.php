<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoginController extends Controller
{
	function __construct()
	{
		$this->middleware(['guest']);
	}
   	public function index()
    {    	
    	return view('auth.login');
    }
    public function store(Request $request)
    {
    	$this->validate($request, [
    		'email'=>'required|email',
    		'password'=>'required',
    	]);
    	//dd('OKAY!!!');
    	if (!auth()->attempt($request->only('email', 'password'), $request->remember)){
     	return back()->with('status', 'Invalid Login Details');
     }

     return redirect()->route('dashboard');
    }

}
