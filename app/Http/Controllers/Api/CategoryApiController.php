<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\PostsResource;
use Illuminate\Http\Request;
use App\Category;

class CategoryApiController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        return CategoryResource::collection($categories);
    }
    
    public function posts($id)
    {
        $categories = Category::find($id);
        $posts = $categories->posts;
        
        return new PostsResource($posts);
    }

}
