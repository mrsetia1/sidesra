@extends('layouts.panel')
@section('content')
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif
<div class="row">
    @foreach ($data_desa as $desa)
    <div class="col-12"><div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <tbody><tr>
                <td colspan="3">
                    <img class="img-responsive" src="/adminlte/img/photo1.png" alt="Peta Desa">
                </td>
            </tr>
        </tbody></table>
    </div>
        <div class="card card-info">
            <div class="card-header">
              <h3 class="card-title">Batas Wilayah Desa Kertajaya</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <strong><i class="fas fa-map mr-1"></i> 
                Utara</strong><p class="text-muted"> 12 Oktober 1995</p>
              <hr>
              <strong><i class="fas fa-map mr-1"></i> 
                Selatan</strong><p class="text-muted"> 12 Oktober 1995</p>
              <hr>
              <strong><i class="fas fa-map mr-1"></i> 
                Timur</strong><p class="text-muted"> 12 Oktober 1995</p>
              <hr>
              <strong><i class="fas fa-map mr-1"></i> 
                Barat</strong><p class="text-muted"> 12 Oktober 1995</p>
              <hr>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    @endforeach
</div>
@endsection