@extends('layouts.app')
    @section('content')
    
    <div class="row mt-4">
        @foreach ($users as $user)
        <div class="col-md-3 mb-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">{{$user->name}}</h5>
                    <p class="card-text">
                        {{$user->email}}
                    </p>
                    <a href="#" class="btn btn-primary">Edit</a>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <div class="col-md-12">
        {{$users->links()}}
    </div>
@endsection