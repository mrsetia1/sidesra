@extends('layouts.mobile')
@section('content')
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif
        <div class="main-panel">
          <div class="content">
            
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">Desa Leuwigoong</h2>
								<h5 class="text-white op-7 mb-2">Kec. Leuwigoong, Kab. Garut</h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="#" class="btn btn-white btn-border btn-round mr-2">Manage</a>
								<a href="#" class="btn btn-secondary btn-round">Add Customer</a>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner mt--5">
					<div class="row mt--2">
            <div class="col">
              <div class="card card-secondary">
                <div class="card-body curves-shadow">
                  <div class="icon-big text-center">
                    <h1><i class="flaticon-home"></i></h1>
                    <h3>Profil Desa</h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card card-dark bg-secondary-gradient">
                <div class="card-body bubble-shadow">
                  <div class="icon-big text-center">
                    <h1><i class="flaticon-interface-6"></i></h1>
                    <h3>Berita</h3>
                  </div>
                </div>
              </div>
            </div>
					</div>
          {{-- MAIN --}}
          
          <div class="row">
            <div class="col">
              <div class="card card-secondary">
                <div class="card-body curves-shadow">
                  <div class="icon-big text-center">
                    <h1><i class="flaticon-agenda-1"></i></h1>
                    <h3>Edukasi</h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card card-dark bg-secondary-gradient">
                <div class="card-body bubble-shadow">
                  <div class="icon-big text-center">
                    <h1><i class="flaticon-chat-8"></i></h1>
                    <h3>Lapor</h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card card-secondary">
                <div class="card-body skew-shadow">
                  <div class="icon-big text-center">
                    <h1><i class="flaticon-shopping-bag"></i></h1>
                    <h3>Daftar Usaha</h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card card-dark bg-secondary2">
                <div class="card-body curves-shadow">
                  <div class="icon-big text-center">
                    <h1><i class="flaticon-placeholder"></i></h1>
                    <h3>Peta Wilayah</h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Card -->
          <h4 class="page-title">Card</h4>
          <div class="col-md-12">
            <div class="card card-post card-round">
              <img class="card-img-top" src="atlantis/assets/img/blogpost.jpg" alt="Card image cap">
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">
                    Best Design Resources This Week
                  </a>
                </h3>
                <a href="#" class="btn btn-primary btn-rounded btn-sm">Read More</a>
              </div>
            </div>
          </div>
        </div>
      </div>
          
          {{-- FOOTER --}}
          <footer class="footer">
            <div class="container-fluid">
              <nav class="pull-left">
                <ul class="nav">
                  <li class="nav-item">
                    <a class="nav-link" href="https://www.themekita.com">
                      ThemeKita
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">
                      Help
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">
                      Licenses
                    </a>
                  </li>
                </ul>
              </nav>			
            </div>
          </footer>
        </div>
@endsection