@extends('layouts.app')
@section('content')
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif
<div class="row">
    <div class="col-8">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Laporan Warga</h3>
          </div>
          @foreach ($laporan as $lap)
            <div class="card-body">
              <div class="tab-content">
                <div class="tab-pane active" id="activity">
                  <!-- Post -->
                  <div class="post">
                    <div class="user-block">
                      <img class="img-circle img-bordered-sm" src="/adminlte/img/user6-128x128.jpg" alt="User Image">
                      <span class="username">
                        <a href="#">{{$lap->user_id}}</a>
                      </span>
                      <span class="description">Dibuat {{$lap->created_at->format('d M Y H:i')}}</span>
                    </div>
                    <!-- /.user-block -->
                    <div class="row mb-3">
                      <div class="col-sm-12">
                        <img class="img-fluid" src="/adminlte/img/photo1.png" alt="Photo">
                      </div>
                      <!-- /.col -->
                    </div>
                    <!-- /.row -->
                    <p>{{$lap->content}}</p>

                    <p>
                        <a href="#" class="link-black text-sm mr-1"><i class="far fa-thumbs-up"></i> Like</a>
                        <a href="#" class="link-black text-sm "><i class="fas fa-thumbs-down"></i> Dislike</a>
                        <span class="float-right">
                        <a href="#" class="link-black text-sm">
                          <i class="far fa-comments mr-1"></i> Comments (5)
                        </a>
                      </span>
                    </p>
                    <form class="form-horizontal">
                        <div class="input-group input-group-sm mb-0">
                          <input class="form-control form-control-sm" placeholder="Tulis komentar">
                          <div class="input-group-append">
                            <button type="submit" class="btn btn-danger">Komentar</button>
                          </div>
                        </div>
                      </form>
                </div>
                  <!-- /.post -->
                </div>
                
              </div>
              <!-- /.tab-content -->
            </div><!-- /.card-body -->
            <hr>
            @endforeach
          </div>
    </div>
    
    <div class="col-4">
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Laporan Kamu</h3>
        </div>
        <div class="card-body">
          <a class="btn btn-app">
            <i class="fas fa-edit"></i> Buat Laporan
          </a>
          <a class="btn btn-app">
            <span class="badge bg-warning">3</span>
            <i class="fas fa-bullhorn"></i> Laporan Baru
          </a>
          <a class="btn btn-app">
            <span class="badge bg-danger">531</span>
            <i class="fas fa-cogs"></i> Laporan Diproses
          </a>
          <a class="btn btn-app">
            <span class="badge bg-info">12</span>
            <i class="fas fa-thumbs-up"></i> Laporan Selesai
          </a>
          <a class="btn btn-app">
            <span class="badge bg-teal">67</span>
            <i class="fas fa-inbox"></i> Total Laporan
          </a>
        </div>
      </div>
    </div>
</div>
@endsection