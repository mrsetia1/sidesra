<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PelayananController extends Controller
{
    
    public function laporan(Request $request){
        $laporan = \App\Pelayanan::all();
        return view('panel.pelayanan.laporan',['laporan'=> $laporan]);
    }
}
