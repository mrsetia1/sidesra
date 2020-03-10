@extends('layouts.panel')
    @section('content')
    <div class="row">
        <div class="col-md-3 mt-4">
            
        <form action="{{route('save-tag')}}" method="POST">
            @csrf
            <div class="form-group">
                <label for="tag_title">Nama tag</label>
                <input name="tag_title" type="text" class="form-control" id="tag_title" aria-describedby="titleHelp" placeholder="Nama kategori">
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>

        </div>
    </div>
    <hr>
    {{-- notifikasi sukses --}}
    @if(session('success'))
    <div class="alert alert-success" role="alert">
      <button type="button" class="close" data-dismiss="alert">×</button> 
      {{session('success')}}
    </div>
    @endif

    <div class="row">
        <div class="bd-example">
            @foreach ($tags as $tag)
            <a href="#" class="badge badge-pill badge-primary"> {{$tag->title}} </a>
            @endforeach

        </div>
    </div>

@endsection