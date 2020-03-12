<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function kegiatan(Request $request){
        $posts = \App\Post::orderBy('updated_at', 'desc')->paginate(10)->where('category_id','1');
        return view('panel.info.kegiatan',['posts'=> $posts]);
    }
    public function berita(Request $request){
        $posts = \App\Post::orderBy('updated_at', 'desc')->paginate(10);
        return view('panel.info.berita',['posts'=> $posts]);
    }
    public function keuangan(Request $request){
        $posts = \App\Post::orderBy('updated_at', 'desc')->paginate(10)->where('category_id','2');
        return view('panel.info.keuangan',['posts'=> $posts]);
    }
    public function prestasi(Request $request){
        $posts = \App\Post::orderBy('updated_at', 'desc')->paginate(10)->where('category_id','7');
        return view('panel.info.prestasi',['posts'=> $posts]);
    }
    public function edukasi(Request $request){
        $posts = \App\Post::orderBy('updated_at', 'desc')->paginate(10)->where('category_id','4');
        return view('panel.info.edukasi',['posts'=> $posts]);
    }
}
