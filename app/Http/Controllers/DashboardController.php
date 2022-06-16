<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\PostLiked;

class DashboardController extends Controller
{
	function __construct()
	{
		$this->middleware(['auth']);
	}
    public function index()
    {
    	//dd(auth->user());
    	$user = auth()->user();
    	Mail::to($user)->send(new PostLiked());
    	return view('dashboard');
    }
}
