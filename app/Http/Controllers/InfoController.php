<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function kegiatan(Request $request){
        $data_desa = \App\Desa::all();
        return view('info.kegiatan',['data_desa'=> $data_desa]);
    }
    public function berita(Request $request){
        $data_desa = \App\Desa::all();
        return view('info.berita',['data_desa'=> $data_desa]);
    }
    public function keuangan(Request $request){
        $data_desa = \App\Desa::all();
        return view('info.keuangan',['data_desa'=> $data_desa]);
    }
    public function prestasi(Request $request){
        $data_desa = \App\Desa::all();
        return view('info.prestasi',['data_desa'=> $data_desa]);
    }
    public function edukasi(Request $request){
        $data_desa = \App\Desa::all();
        return view('info.edukasi',['data_desa'=> $data_desa]);
    }
}
