<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index(){
        $posts = Post::all()->skip(10)->take(5);
        return view('home.index',compact('posts'));
    }
    public function singlepost ($slug){
        $post = Post::where('slug','=',$slug)->first();
        return view('home.singlepost',compact(['post']));
    }
}
