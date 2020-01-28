<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(Request $request){
        
            $data_desa = \App\Desa::all();
            
        return view('dashboard.index',['data_desa'=> $data_desa]);
    }
}
