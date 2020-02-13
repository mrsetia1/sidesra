@extends('layouts.app')
@section('content')
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif
<div class="row">
    @foreach ($data_desa as $desa)
    <div class="col-12">
        <div class="card card-info">
            <div class="card-header">
              <h3 class="card-title">Sejarah Desa Kertajaya</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <strong><i class="fas fa-clock mr-1"></i> Tahun Berdiri / Diresmikan</strong>

              <p class="text-muted">
                12 Oktober 1995
              </p>

              <hr>

              <strong><i class="fas fa-user mr-1"></i> Tokoh</strong>

              <p class="text-muted">Kanjeng Sultan</p>

              <hr>

              <strong><i class="far fa-file-alt mr-1"></i> Cerita</strong>

              <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
            </div>
            <!-- /.card-body -->
        </div>
    </div>
    @endforeach
</div>
@endsection