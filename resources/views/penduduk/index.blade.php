@extends('layouts.app')
@section('content')

{{-- notifikasi sukses --}}
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  <button type="button" class="close" data-dismiss="alert">×</button> 
  {{session('sukses')}}
</div>
@endif

{{-- notifikasi form validasi --}}
@if ($errors->has('file'))
<span class="invalid-feedback" role="alert">
  <strong>{{ $errors->first('file') }}</strong>
</span>
@endif


<style type="text/css">
  .pagination li{
    float: left;
    list-style-type: none;
    margin:5px;
  }
</style>
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body">
        <a class="btn btn-app bg-success" data-toggle="modal" data-target="#exampleModal">
          <i class="fas fa-plus"></i> Tambah Data
        </a>
        <a class="btn btn-app bg-info" data-toggle="modal" data-target="#importExcel">
          <i class="fas fa-upload"></i> Upload
        </a>
        <a href="/penduduk/export_excel" target="_blank" class="btn btn-app bg-info">
          <i class="fas fa-file-excel"></i> Download Excel
        </a>
        <a href="/penduduk/cetak" class="btn btn-app bg-info" target="_blank">
          <i class="fas fa-file-pdf"></i> PDF
        </a>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Tabel Data Penduduk</h3>

        <div class="card-tools">
          <form method="GET" action="/penduduk">
          <div class="input-group input-group-sm" style="width: 150px;">
            <input type="search" name="cari" class="form-control float-right" placeholder="Cari">

            <div class="input-group-append">
              <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
            </div>
          </div>
        </form>
        </div>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
        
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Nama Lengkap</th>
              <th>NIK</th>
              <th>Email</th>
              <th>Jenis Kelamin</th>
              <th>Tempat Lahir</th>
              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($data_penduduk as $penduduk)
            <tr>
              
              <td><a href="/penduduk/{{$penduduk->id}}/profil">{{$penduduk->nama}}</a></td>
              <td>{{$penduduk->nik}}</td>
              <td>{{$penduduk->email}}</td>
              <td>{{$penduduk->sex}}</td>
              <td>{{$penduduk->tempatlahir}}</td>
              <td>
                <a href="/penduduk/{{$penduduk->id}}/edit" class="btn btn-warning btn-sm">edit</a>
                <a href="/penduduk/{{$penduduk->id}}/delete" class="btn btn-danger btn-sm" onclick="return confirm('Yakin data dihapus?')">delete</a>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      <!-- /.card-body -->
      <div class="card-footer clearfix">
        {{ $data_penduduk->links() }}
        Halaman : {{ $data_penduduk->currentPage() }} <br/>
        Total Data : {{ $data_penduduk->total() }} <br/>
        Data Per Halaman : {{ $data_penduduk->perPage() }} <br/>
      </div>
    </div>
    <!-- /.card -->
  </div>
</div>

<!-- Modal Tambah Data-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/penduduk/create" method="POST">
          {{csrf_field()}}
          <div class="form-group">
            <label for="nama">Nama Lengkap</label>
            <input name="nama" type="text" class="form-control" id="nama" aria-describedby="nama">
          </div>
          <div class="form-group">
            <label for="nik">NIK</label>
            <input name="nik" type="text" class="form-control" id="nik" aria-describedby="nik">
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input name="email" type="text" class="form-control" id="email" aria-describedby="email">
          </div>
          <div class="form-group">
            <label for="sex">Jenis Kelamin</label>
            <select class="form-control" id="sex" name="sex" >
              <option value="1">Laki - laki</option>
              <option value="2">Perempuan</option>
            </select>
          </div>
          <div class="form-group">
            <label for="tempatlahir">Tempat Lahir</label>
            <input name="tempatlahir" type="text" class="form-control" id="tempatlahir" aria-describedby="tempatlahir">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
          <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
        </div>
      </div>
    </div>
</div>

		<!-- Modal Import Excel -->
		<div class="modal fade" id="importExcel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<form method="post" action="/penduduk/import_excel" enctype="multipart/form-data">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Import Excel</h5>
						</div>
						<div class="modal-body">
 
							{{ csrf_field() }}
 
							<label>Pilih file excel</label>
							<div class="form-group">
								<input type="file" name="file" required="required">
							</div>
 
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Import</button>
						</div>
					</div>
				</form>
			</div>
		</div>

    @endsection