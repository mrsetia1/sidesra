<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function application(Request $request){
        
            $data_desa = \App\Desa::all();
            
        return view('panel.settings.application',['data_desa'=> $data_desa]);
    }
}
