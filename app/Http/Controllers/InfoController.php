<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function kegiatan(Request $request){
        $data_desa = \App\Desa::all();
        return view('panel.info.kegiatan',['data_desa'=> $data_desa]);
    }
    public function berita(Request $request){
        $data_desa = \App\Desa::all();
        return view('panel.info.berita',['data_desa'=> $data_desa]);
    }
    public function keuangan(Request $request){
        $data_desa = \App\Desa::all();
        return view('panel.info.keuangan',['data_desa'=> $data_desa]);
    }
    public function prestasi(Request $request){
        $data_desa = \App\Desa::all();
        return view('panel.info.prestasi',['data_desa'=> $data_desa]);
    }
    public function edukasi(Request $request){
        $data_desa = \App\Desa::all();
        return view('panel.info.edukasi',['data_desa'=> $data_desa]);
    }
}
