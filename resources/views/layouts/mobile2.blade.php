<!DOCTYPE html>
<html>
<head>
  
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>PANEL | {{config('desa.title')}}</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/adminlte/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="/adminlte/css/adminlte.min.css">
<link rel="stylesheet" href="/adminlte/plugins/summernote/summernote-bs4.css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

</head>
<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white fixed-top">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#">
            <i class="far fa-bell"></i>
            <span class="badge badge-danger navbar-badge">3</span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <a href="#" class="dropdown-item">
              <!-- Message Start -->
              <div class="media">
                <img src="/adminlte/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                <div class="media-body">
                  <h3 class="dropdown-item-title">
                    Brad Diesel
                    <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                  </h3>
                  <p class="text-sm">Call me whenever you can...</p>
                  <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                </div>
              </div>
              <!-- Message End -->
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <!-- Message Start -->
              <div class="media">
                <img src="/adminlte/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                <div class="media-body">
                  <h3 class="dropdown-item-title">
                    John Pierce
                    <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                  </h3>
                  <p class="text-sm">I got your message bro</p>
                  <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                </div>
              </div>
              <!-- Message End -->
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <!-- Message Start -->
              <div class="media">
                <img src="/adminlte/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                <div class="media-body">
                  <h3 class="dropdown-item-title">
                    Nora Silvester
                    <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                  </h3>
                  <p class="text-sm">The subject goes here</p>
                  <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                </div>
              </div>
              <!-- Message End -->
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
          </div>
        </li>
      </ul>
    </nav>
    <!-- /.navbar -->
    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="/" class="brand-link">
        <img src="/adminlte/img/logo.png"
             alt="AdminLTE Logo"
             class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">FIA ANGKASA</span>
      </a>
  
      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="info">
            <a href="#" class="d-block">{{auth()->user()->name}}</a>
          </div>
        </div>
  
        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
                 with font-awesome or any other icon font library -->
            <li class="nav-item">
              <a href="/dashboard" class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt text-warning"></i>
                <p class="text">DASHBOARD</p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-cube text-warning"></i>
                <p>
                  MASTER
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/barang" class="nav-link">
                    <i class="fas fa-cubes nav-icon"></i>
                    <p>BARANG</p>
                  </a>
                </li>
              </ul>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/kategori" class="nav-link">
                    <i class="fas fa-boxes nav-icon"></i>
                    <p>KATEGORI</p>
                  </a>
                </li>
              </ul>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/brand" class="nav-link">
                    <i class="fas fa-trademark nav-icon"></i>
                    <p>BRAND</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-tasks text-warning"></i>
                <p>
                  PROJECT
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/application" class="nav-link">
                    <i class="fas fa-list-ul nav-icon"></i>
                    <p>List Project</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon far fa-circle text-warning"></i>
                <p>
                  PROFIL DESA
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/identitasdesa" class="nav-link">
                    <i class="far fa-id-card nav-icon"></i>
                    <p>Identitas Desa</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/sejarahdesa" class="nav-link">
                    <i class="fa fa-book nav-icon"></i>
                    <p>Sejarah Desa</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/wilayahdesa" class="nav-link">
                    <i class="fa fa-map nav-icon"></i>
                    <p>Wilayah Administratif</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/perangkatdesa" class="nav-link">
                    <i class="fa fa-sitemap  nav-icon"></i>
                    <p>Perangkat Desa</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon far fa-bell text-warning"></i>
                <p>
                  INFO DESA
                  <i class="fas fa-angle-left right"></i>
                  <span class="badge badge-primary right">6</span>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/kegiatan" class="nav-link">
                    <i class="far fa-calendar-alt nav-icon"></i>
                    <p>Kegiatan</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/berita" class="nav-link">
                    <i class="fa fa-book nav-icon"></i>
                    <p>Berita</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/keuangan" class="nav-link">
                    <i class="fa fa-dollar-sign nav-icon"></i>
                    <p>Keuangan</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/prestasi" class="nav-link">
                    <i class="fa fa-award nav-icon"></i>
                    <p>Prestasi</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/edukasi" class="nav-link">
                    <i class="fa fa-graduation-cap nav-icon"></i>
                    <p>Edukasi</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fa fa-hand-holding-heart text-warning"></i>
                <p>
                  PELAYANAN
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/layanan" class="nav-link">
                    <i class="fa fa-umbrella nav-icon"></i>
                    <p>Layanan</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/laporan" class="nav-link">
                    <i class="fa fa-sync nav-icon"></i>
                    <p>Laporan</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/saran" class="nav-link">
                    <i class="fa fa-rss nav-icon"></i>
                    <p>Saran</p>
                  </a>
                </li>
              </ul>
            </li>
            @if(auth()->user()->user_type=='admin')
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fa fa-file-alt text-warning"></i>
                <p>
                  ARTIKEL
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/posts" class="nav-link">
                    <i class="fa fa-copy nav-icon"></i>
                    <p>Kelola Artikel</p>
                  </a>
                </li>
              </ul>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="{{route('posts.add')}}" class="nav-link">
                    <i class="fa fa-edit nav-icon"></i>
                    <p>Buat Artikel</p>
                  </a>
                </li>
              </ul>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/posts/category" class="nav-link">
                    <i class="fa fa-clone nav-icon"></i>
                    <p>Kategori</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fa fa-user-friends text-warning"></i>
                <p>
                  PENDUDUK
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/penduduk" class="nav-link">
                    <i class="fa fa-users nav-icon"></i>
                    <p>Data Penduduk</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/penduduk/user" class="nav-link">
                    <i class="fa fa-users-cog nav-icon"></i>
                    <p>Manajemen User</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-cart-plus text-warning"></i>
                <p>
                  PASAR DESA
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/ukm" class="nav-link">
                    <i class="fa fa-shopping-basket nav-icon"></i>
                    <p>UKM</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/jasa" class="nav-link">
                    <i class="fa fa-hammer nav-icon"></i>
                    <p>Jasa</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-cogs text-warning"></i>
                <p>
                  SETTINGS
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/application" class="nav-link">
                    <i class="fas fa-cog nav-icon"></i>
                    <p>APPLICATION</p>
                  </a>
                </li>
              </ul>
            </li>
            
            @endif
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fa fa-user text-warning"></i>
                <p>
                  AKUN
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="/profiluser" class="nav-link">
                    <i class="fa fa-user nav-icon"></i>
                    <p>Profil Saya</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="/pendaftaranusaha" class="nav-link">
                    <i class="fa fa-file-signature nav-icon"></i>
                    <p>Pendaftaran Usaha</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{ route('logout') }}"
                  onclick="event.preventDefault();
                  document.getElementById('logout-form').submit();">
                    <i class="nav-icon far fa-circle text-danger"></i>
                    <p>{{ __('Logout') }}</p>
                  </a>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                  </form>
                </li>
              </ul>
            </li>
            
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-circle"></i>
                <p>
                  Level 1
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item has-treeview">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>
                      Level 2
                      <i class="right fas fa-angle-left"></i>
                    </p>
                  </a>
                  <ul class="nav nav-treeview">
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="far fa-dot-circle nav-icon"></i>
                        <p>Level 3</p>
                      </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
        </div><!-- /.container-fluid -->
      </section>
  
      <!-- Main content -->
      <section class="content">
        @yield('content')
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
      <div class="float-right d-none d-sm-block">
        <b>Versi DesaKU</b> 1.0.0
      </div>
      <strong>Copyright &copy; 2020 <a href="http://fiaangkasa.co.id">fiaangkasa.co.id</a>.</strong> All rights
      reserved.
    </footer>
  
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->
  <!-- jQuery -->
  <script src="/adminlte/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="/adminlte/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="/adminlte/js/demo.js"></script>
  <script src="/adminlte/plugins/summernote/summernote-bs4.min.js"></script>
  <!-- bs-custom-file-input -->
  <script src="/adminlte/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
  <script src="/vendor/laravel-filemanager/js/stand-alone-button.js"></script>
  <script src="/adminlte/plugins/datatables/jquery.dataTables.js"></script>
  <script src="/adminlte/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
  
  <script>
    $(function () {
      // Summernote
      $('.textarea').summernote()
    });
    
    $(document).ready(function () {
      $('#lfm').filemanager('image');
    });
  </script>
  </body>
  </html>  