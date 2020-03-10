@extends('layouts.panel')
    @section('content')
    
    <div class="row mt-4">
        @foreach ($posts as $post)
        <div class="col-md-3 mb-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">{{$post->title}}</h5>
                    <p class="card-text">
                        {{$post->content}}
                    </p>
                    <a href="#" class="btn btn-primary">Edit</a>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <div class="col-md-12">
        {{$posts->links()}}
    </div>
@endsection