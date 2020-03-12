<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use App\Post;
use App\Category;
use App\Tag;
use App\Image;

class PostController extends Controller
{
    
    //GET ALL
    public function index(){
        $posts = Post::orderBy('updated_at', 'desc')->paginate(10);
        return view('panel.posts.index')->withPosts($posts);
    
    }
    //GET by ID
    public function show($id){
        return view('panel.posts.post')->with([
            'post' => Post::find($id),
        ]);
    }

    public function newPost(){
        $categories = Category::all();
        $tags = Tag::all();
        return view('panel.posts.new-post')->with([
            'categories'    => $categories,
            'tags'          => $tags
        ]);
    }


    public function store( Request $request ){
        $request->validate([
            'post_title'    => 'required',
            'post_content'  => 'required',
            'post_category' => 'required',
        ]);

        $user = Auth::user();
        $post = new Post();
        $post->title = $request->input('post_title');
        $post->slug = Str::slug($request->input('post_title'));
        $post->content = $request->input('post_content');
        $post->category_id = intval( $request->input('post_category') );
        $post->author_id = $user->id;
        $post->post_type = 'text';
        $post->save();
        if( $request->has('post_tags') ){
            foreach ($request->input('post_tags') as $id) {
                DB::table('post_tag')->insert([
                    'post_id' => $post->id,
                    'tag_id'    => $id
                ]);
            }
        }
        if( $request->hasFile('post_images') ){
            $counter = 0;
            $images = $request->file('post_images');
            foreach ($images as $image) {
                $path = $image->store('public');
                $image = new Image();
                $image->description = '';
                $image->url = $path;
                $image->post_id = $post->id;
                if( $counter == 0 ){
                    $image->featured = true;
                }else{
                    $image->featured = false;
                }
                $image->save();
                $counter++;
            }
        }
        return redirect(route('posts'));


    }
}
