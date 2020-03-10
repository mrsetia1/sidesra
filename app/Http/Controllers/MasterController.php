<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MasterController extends Controller
{
    public function kategori(Request $request){
        
            $dataKategori = \App\Master::all();
            
        return view('panel.master.kategori.index',['dataKategori'=> $dataKategori]);
    }
    public function barang(Request $request){
        
            $data_desa = \App\Desa::all();
            
        return view('panel.settings.application',['data_desa'=> $data_desa]);
    }

    public function brand(Request $request){
        
        $data_desa = \App\Desa::all();
        
    return view('panel.settings.application',['data_desa'=> $data_desa]);
}
}
