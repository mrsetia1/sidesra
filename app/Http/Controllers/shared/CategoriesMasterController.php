<?php

namespace App\Http\Controllers\shared;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CategoriesMasterController
{
    
    //GET ALL
    public function index(){
        //TODO:
        return new CategoriesResource(Category::paginate());
    }

    //GET by ID
    public function show($id){
        //TODO
    }
}