<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CategoryApiController extends Controller
{
    
    //GET ALL
    public function index(){
        return view('categories.index')->with([
            'categories' => Category::all(),
        ]);
    }
    //GET by ID
    public function show($id){
        return view('categories.category');
    }

}
