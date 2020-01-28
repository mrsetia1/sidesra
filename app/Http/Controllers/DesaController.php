<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DesaController extends Controller
{
    public function index(Request $request){
        $data_desa = \App\Desa::all();
        return view('desa.index',['data_desa'=> $data_desa]);
    }
    
    public function sejarahdesa(Request $request){
        $data_desa = \App\Desa::all();
        return view('desa.sejarahdesa',['data_desa'=> $data_desa]);
    }
    
    public function wilayahdesa(Request $request){
        $data_desa = \App\Desa::all();
        return view('desa.wilayahdesa',['data_desa'=> $data_desa]);
    }
    
    public function perangkatdesa(Request $request){
        $data_desa = \App\Desa::all();
        return view('desa.perangkatdesa',['data_desa'=> $data_desa]);
    }
}
