<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Tag;

class TagController extends Controller
{
    //GET ALL
    public function index(){
        return view('panel.tags.index')->with([
            'tags' => Tag::all(),
        ]);
    
    }

    //GET by ID
    public function show($id){
        $tag = Tag::find($id);
        return view('panel.tags.tag')->withTag($tag);
    }

    public function store(Request $request){
        $request->validate([
            'tag_title' => 'required',
        ]);
        $tag = new Tag();
        $tag->title = $request->get('tag_title');
        $tag->save();
        return redirect()->back()->with('success','Tag berhasil ditambahkan');
    }
}
