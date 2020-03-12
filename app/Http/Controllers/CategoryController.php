<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    
    //GET ALL
    public function index(){
        return view('panel.categories.index')->with([
            'categories' => Category::all(),
        ]);
    
    }

    //GET by ID
    public function show($id){
        return view('panel.categories.category')->with([
            'category' => Category::find($id),
        ]);
    }

    public function store(Request $request){
        $request->validate([
            'category_title' => 'required',
            'category_color' => 'required',
            'category_icon' => 'required',
        ]);
        $category = new Category();
        $category->title = $request->get('category_title');
        $category->color = $request->get('category_color');
        $category->color = $request->get('category_icon');
        $category->save();
        return redirect()->back()->with('success','Kategori berhasil ditambahkan');
    }
}
