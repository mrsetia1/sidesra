<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PelayananController extends Controller
{
    
    public function layanan(Request $request){
        $data_desa = \App\Desa::all();
        return view('info.kegiatan',['data_desa'=> $data_desa]);
    }
    public function laporan(Request $request){
        $laporan = \App\Pelayanan::all();
        return view('pelayanan.laporan',['laporan'=> $laporan]);
    }
    public function saran(Request $request){
        $data_desa = \App\Desa::all();
        return view('info.keuangan',['data_desa'=> $data_desa]);
    }
}
