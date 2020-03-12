<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;

class CommentController extends Controller
{
    //GET ALL
    public function index(){
        $comments = Comment::with(['author','post'])->paginate(12);
        return view('panel.comments.index')->withComments($comments);
    
    }

    //GET by ID
    public function show($id){
        return view('panel.comments.comment')->with([
            'comment' => Comment::find($id),
        ]);
    }
}
