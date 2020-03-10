@extends('layouts.panel')
    @section('content')
    
    <div class="row mt-4">
        @foreach ($posts as $post)
        <div class="col-md-3 mb-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">{{$post->title}}</h5>
                    <a target="_blank" href="{{route('site.single.post',$post->title)}}" class="btn btn-info btn-sm">lihat</a>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <div class="col-md-12">
        {{$posts->links()}}
    </div>
@endsection