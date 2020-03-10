@extends('layouts.panel')
    @section('content')
    
    <div class="row mt-4">
        @foreach ($comments as $comment)
        <div class="col-md-3 mb-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">{{$comment->author->name}}</h5>
                    <p class="card-text">
                        {{$comment->content}}
                    </p>
                    <a href="{{$comment->post->link()}}" class="btn btn-primary">Lihat postingan >>></a>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <div class="col-md-12">
        {{$comments->links()}}
    </div>

@endsection