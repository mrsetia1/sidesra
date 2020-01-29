<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\TagResource;
use App\Http\Resources\PostResource;
use App\Tag;

use Illuminate\Http\Request;

class TagApiController extends Controller
{
    public function index()
    {
        $tags = Tag::paginate();
        return TagResource::collection($tags);
    }
    
    public function posts($id)
    {
        $tags = Tag::find($id);
        $posts = $tags->posts;
        
        return PostResource::collection($posts);
    }
}
