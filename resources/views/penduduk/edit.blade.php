@extends('layouts.app')
@section('content')

        <h1>Edit Data Penduduk</h1>
        @if(session('sukses'))
        <div class="alert alert-success" role="alert">
          {{session('sukses')}}
        </div>
        @endif
        <div class="row">
            <div class="col-12">
                <form action="/penduduk/{{$penduduk->id}}/update" method="POST" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                      <label for="nama">Nama Lengkap</label>
                      <input  value="{{$penduduk->nama}}" name="nama" type="text" class="form-control" id="nama" aria-describedby="nama">
                    </div>
                    <div class="form-group">
                      <label for="nik">NIK</label>
                      <input  value="{{$penduduk->nik}}" name="nik" type="text" class="form-control" id="nik" aria-describedby="nik">
                    </div>
                    
                    <div class="form-group">
                        <label for="jenis_kelamin">Jenis Kelamin</label>
                        <select class="form-control" id="jenis_kelamin" name="jenis_kelamin" >
                        <option value="1" @if($penduduk->jenis_kelamin == '1') selected @endif>Laki - laki</option>
                        <option value="2" @if($penduduk->jenis_kelamin == '2') selected @endif>Perempuan</option>
                        </select>
                    </div>
                    <div class="form-group">
                      <label for="tempatlahir">Tempat Lahir</label>
                      <textarea class="form-control"  id="tempatlahir" name="tempatlahir" rows="3">{{$penduduk->tempatlahir}}</textarea>
                    </div>
                    <div class="form-group">
                      <label for="foto">Foto</label>
                      <input class="form-control"  id="foto" name="foto" type="file" rows="3">
                    </div>
                    <button type="submit" class="btn btn-warning">Update</button>
                  </form>
            

            </div>
        </div>
        
@endsection