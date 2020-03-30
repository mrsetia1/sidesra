@extends('layouts.panel')
@section('content')
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif
<div class="row">
    @foreach ($data_desa as $desa)
    <div class="col-12">
        <div class="row">
          <div class="col-12">
            <!-- Widget: user widget style 1 -->
            <div class="card card-widget widget-user">
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <div class="widget-user-header bg-info">
                <h3 class="widget-user-username">{{$desa->nama_kepala_desa}}</h3>
                <h6 class="widget-user-desc">Kepala Desa</h6>
              </div>
              <div class="widget-user-image">
                <img class="img-circle elevation-2" src="images/struktur/tonjong (1).jpg" alt="User Avatar">
              </div>
              <div class="card-footer">
                <div class="row">
                  <div class="col-12">
                    <h5>Beberapa fitur masih dalam pengembangan!</h5>
                    <h5>Selamat Datang di Desa {{$desa->nama_desa}}</h5>
                    <h6>Alamat :<br>{{$desa->alamat_kantor}}, Kec. {{$desa->nama_kecamatan}}, Kab. {{$desa->nama_kabupaten}}, {{$desa->nama_propinsi}}<br>
                        {{$desa->telepon}} | {{$desa->email_desa}} | {{$desa->website}}
                    </h6>
              </div>
                </div>
                <!-- /.row -->
              </div>
            </div>
            <!-- /.widget-user -->
          </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-6">
                <div class="small-box bg-info">
                    <div class="inner">
                      <h3>-</h3>
      
                      <p>Penduduk</p>
                    </div>
                    <div class="icon">
                      <i class="ion ion-bag"></i>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
              <div class="small-box bg-success">
                <div class="inner">
                  <h3>-</h3>
  
                  <p>RT</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-warning">
                <div class="inner">
                  <h3>-</h3>
  
                  <p>RW</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-danger">
                <div class="inner">
                  <h3>-</h3>
  
                  <p>Karang Taruna</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
        </div>
    </div>
    @endforeach
</div>
@endsection