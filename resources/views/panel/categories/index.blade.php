@extends('layouts.panel')
@section('content')


    <div class="row">
        <div class="col-md-3 mt-4">
            
        <form action="{{route('save-category')}}" method="POST">
            @csrf
            <div class="form-group">
                <label for="category_title">Nama kategori</label>
                <input name="category_title" type="text" class="form-control" id="category_title" aria-describedby="titleHelp" placeholder="Nama kategori">
            </div>
            <div class="form-group">
                <label for="category_color">Warna</label>
                <input name="category_color" type="color" class="form-control" id="category_color" placeholder="Warna">
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
        @foreach ($categories as $category)
        <div class="col-md-3 mt-2 mb-2">
            <div class="card">
                <div class="card-body">
                    {{$category->title}}
                </div>
            </div>
        </div>
        @endforeach
    </div>

@endsection