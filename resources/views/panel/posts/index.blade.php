@extends('layouts.panel')
    @section('content')
    <div class="card">
        <div class="card-body p-0">
        </div>

    </div>
    <div class="col">
        <div class="card card-danger card-outline">
          <div class="card-header">
            <h3 class="card-title">Artikel</h3>

            <div class="card-tools">
              <div class="input-group input-group-sm">
                <input type="text" class="form-control" placeholder="Cari Artikel">
                <div class="input-group-append">
                  <div class="btn btn-primary">
                    <i class="fas fa-search"></i>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.card-tools -->
          </div>
          <!-- /.card-header -->
          <div class="card-body p-0">
            <div class="mailbox-controls">
                <a href="{{route('add-post')}}">
                    <button type="button" class="btn btn-default btn-sm" >
                        <i class="fas fa-edit"> Buat Artikel</i>
                    </button>
                </a>
            </div>
            <div class="table-responsive mailbox-messages">
                <table class="table table-striped projects">
                    <thead>
                        <tr>
                            <th style="width: 1%">
                                No.
                            </th>
                            <th style="width: 40%">
                                Title
                            </th>
                            <th style="width: 10%">
                                Author
                            </th>
                            <th style="width: 8%" class="text-center">
                                Category
                            </th>
                            <th style="width: 20%">
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($posts as $post)
                        <tr>
                            <td>
                                #
                            </td>
                            <td>
                                <a>
                                    {{$post->title}}
                                </a>
                                <br>
                                <small>
                                    {{$post->updated_at->format('d M Y')}}
                                </small>
                            </td>
                            <td>
                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        {{$post->author['name']}}
                                    </li>
                                </ul>
                            </td>
                            <td class="project-state">
                                <a href="/posts/category"><span class="badge badge-success">{{$post->category['title']}}</span></a>
                            </td>
                            <td class="project-actions text-right">                            
                                <a class="btn btn-primary btn-sm" target="_blank" href="{{route('site.single.post',$post->title)}}">
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
                        @endforeach
                    </tbody>
                </table>
              <!-- /.table -->
            </div>
            <!-- /.mail-box-messages -->
          </div>
          <!-- /.card-body -->
          <div class="card-footer p-0">
            <div class="mailbox-controls">
                <div class="float-right">
                    {{$posts->links()}}
                </div>
              <!-- /.float-right -->
            </div>
          </div>
        </div>
        <!-- /.card -->
      </div>
@endsection