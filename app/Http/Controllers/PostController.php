<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class PostController extends Controller
{
    
    //GET ALL
    public function index(){
        $posts = Post::paginate(12);
        return view('posts.index')->withPosts($posts);
    
    }
    //GET by ID
    public function show($id){
        return view('posts.post')->with([
            'post' => Post::find($id),
        ]);
    }
}
