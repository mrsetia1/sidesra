@extends('layouts.panel')
@section('content')
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif
<div class="row">
  @foreach ($posts as $post)
    <div class="col-md-4">
      <!-- Widget: user widget style 1 -->
      <div class="card card-widget widget-user">
        <!-- Add the bg color to the header using any of the bg-* classes -->
        <div class="widget-user-header text-white" style="background: url('adminlte/img/photo1.png') center center;">
          <h3 class="text-right">{{$post->category['title']}}</h3>
        </div>
        <div class="card-footer">
          <h5 class="description-header">{{$post->title}}</h5>
        </div>
      </div>
    </div>
    @endforeach
</div>
@endsection