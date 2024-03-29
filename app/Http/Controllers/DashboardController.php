<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(Request $request){
        
            $data_desa = \App\Desa::all();
            
        return view('panel.dashboard.index',['data_desa'=> $data_desa]);
    }
    public function mobile(Request $request){
        
            $data_desa = \App\Desa::all();
            
        return view('mobile.index',['data_desa'=> $data_desa]);
    }
}
