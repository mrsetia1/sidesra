<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function index(Request $request){
        
            $data_desa = \App\Desa::all();
            
        return view('panel.projects.index',['data_desa'=> $data_desa]);
    }
}
