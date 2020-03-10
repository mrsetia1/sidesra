@extends('layouts.app')
@section('content')
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif

<div class="card">
    <div class="card-header">
      <h3 class="card-title">INSTANSI   </h3>
      <div class="card-tools">
        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
          <i class="fas fa-minus"></i></button>
      </div>
    </div>
    <div class="card-body p-0">
        <table class="table table-striped projects">
            <tbody>
                <tr>
                    <td>
                        Nama Perusahaan
                    </td>
                    <td>
                        FIA ANGKASA
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Direktur
                    </td>
                    <td>
                        WENDI PRANATA
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <!-- /.card-body -->
</div>
<div class="card">
    <div class="card-header">
      <h3 class="card-title">APPLICATION SETTING</h3>
      <div class="card-tools">
        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
          <i class="fas fa-minus"></i></button>
      </div>
    </div>
    <div class="card-body p-0">
      <table class="table table-striped projects">
          <tbody>
              <tr>
                  <td>
                      #
                  </td>
                  <td>
                      <a>
                          AdminLTE v3
                      </a>
                      <br>
                      <small>
                          Created 01.01.2019
                      </small>
                  </td>
                  <td>
                      <ul class="list-inline">
                          <li class="list-inline-item">
                              <img alt="Avatar" class="table-avatar" src="../../dist/img/avatar.png">
                          </li>
                          <li class="list-inline-item">
                              <img alt="Avatar" class="table-avatar" src="../../dist/img/avatar2.png">
                          </li>
                          <li class="list-inline-item">
                              <img alt="Avatar" class="table-avatar" src="../../dist/img/avatar3.png">
                          </li>
                          <li class="list-inline-item">
                              <img alt="Avatar" class="table-avatar" src="../../dist/img/avatar04.png">
                          </li>
                      </ul>
                  </td>
                  <td class="project_progress">
                      <div class="progress progress-sm">
                          <div class="progress-bar bg-green" role="progressbar" aria-volumenow="57" aria-volumemin="0" aria-volumemax="100" style="width: 57%">
                          </div>
                      </div>
                      <small>
                          57% Complete
                      </small>
                  </td>
                  <td class="project-state">
                      <span class="badge badge-success">Success</span>
                  </td>
                  <td class="project-actions text-right">
                      <a class="btn btn-info btn-sm" href="#">
                          <i class="fas fa-pencil-alt">
                          </i>
                          Edit
                      </a>
                  </td>
              </tr>
              <tr>
                  <td>
                      #
                  </td>
                  <td>
                      <a>
                          AdminLTE v3
                      </a>
                      <br>
                      <small>
                          Created 01.01.2019
                      </small>
                  </td>
                  <td>
                      <ul class="list-inline">
                          <li class="list-inline-item">
                              <img alt="Avatar" class="table-avatar" src="../../dist/img/avatar.png">
                          </li>
                          <li class="list-inline-item">
                              <img alt="Avatar" class="table-avatar" src="../../dist/img/avatar2.png">
                          </li>
                      </ul>
                  </td>
                  <td class="project_progress">
                      <div class="progress progress-sm">
                          <div class="progress-bar bg-green" role="progressbar" aria-volumenow="47" aria-volumemin="0" aria-volumemax="100" style="width: 47%">
                          </div>
                      </div>
                      <small>
                          47% Complete
                      </small>
                  </td>
                  <td class="project-state">
                      <span class="badge badge-success">Success</span>
                  </td>
                  <td class="project-actions text-right">
                      <a class="btn btn-primary btn-sm" href="#">
                          <i class="fas fa-folder">
                          </i>
                          View
                      </a>
                      <a class="btn btn-info btn-sm" href="#">
                          <i class="fas fa-pencil-alt">
                          </i>
                          Edit
                      </a>
                      <a class="btn btn-danger btn-sm" href="#">
                          <i class="fas fa-trash">
                          </i>
                          Delete
                      </a>
                  </td>
              </tr>
          </tbody>
      </table>
    </div>
    <!-- /.card-body -->
</div>

@endsection