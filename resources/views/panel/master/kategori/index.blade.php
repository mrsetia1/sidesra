@extends('layouts.app')
@section('content')
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif


<div class="card">
    <div class="card-header">
        <h3 class="card-title">LIST KATEGORI</h3>
        <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fas fa-minus"></i></button>
        </div>
    </div>
    <div class="card-body p-0">
      <div class="mailbox-controls">
        <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#modal-tambahkategori"><i class="fas fa-plus"></i> Tambah Kategori</button>
      </div>
      <div class="modal fade" id="modal-tambahkategori" style="display: none;" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Tambah Kategori</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="card-body">
                <div class="form-group">
                  <label for="kategori">Kategori</label>
                  <input type="text" class="form-control" id="kategori" placeholder="kategori">
                </div>
                <div class="form-group">
                  <label for="kode">Kode</label>
                  <input type="text" class="form-control" id="kode" placeholder="kode">
                </div>
                <div class="form-group">
                  <label for="keterangan">Keterangan</label>
                  <input type="text" class="form-control" id="keterangan" placeholder="keterangan">
                </div>
              </div>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
              <button type="button" class="btn btn-primary">Simpan</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      
      <table class="table table-striped projects">
        <thead>
          <tr>
              <th style="width: 1%">
                  No.
              </th>
              <th style="width: 20%">
                  Kategori
              </th>
              <th style="width: 30%">
                  Kode
              </th>
              <th>
                  Keterangan
              </th>
              <th style="width: 30%">
              </th>
          </tr>
      </thead>
      <tbody>
        @foreach ($dataKategori as $kategori)
        <tr>
          <td>#</td>
          <td> {{$kategori->kategori}} </td>
          <td> {{$kategori->kode}} </td>
          <td class="project_progress">
              <small>
                {{$kategori->keterangan}}
              </small>
          </td>
          <td class="project-actions text-right">
            <a class="btn btn-info btn-sm" href="#">
              <i class="fas fa-pencil-alt"></i>
              Edit
            </a>
            <a class="btn btn-warning btn-sm" href="#">
              <i class="fas fa-eye-slash"></i>
              Non Aktif
            </a>
            <a class="btn btn-danger btn-sm" href="#">
              <i class="fas fa-trash"></i>
              Delete
            </a>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>
@endsection