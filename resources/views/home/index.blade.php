<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>{{config('desa.title')}}</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="{{config('desa.favicon')}}" rel="icon">
  <link href="{{config('desa.favicon')}}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="/avilon/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/avilon/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/avilon/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/avilon/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="/avilon/lib/magnific-popup/magnific-popup.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="/avilon/css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Avilon
    Theme URL: https://bootstrapmade.com/avilon-bootstrap-landing-page-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body>

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="#intro" class="scrollto">{{config('desa.title_header')}}</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#intro"><img src="img/logo.png" alt="" title=""></a> -->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#intro">Home</a></li>
          <li><a href="#team">Struktur</a></li>
          <li><a href="#about">Tentang Kami</a></li>
          <li><a href="#features">Fitur</a></li>
          <li><a href="#pricing">Pricing</a></li>
          <li><a href="#gallery">Gallery</a></li>
          <li class="menu-has-children"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="menu-has-children"><a href="#">Drop Down 2</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li>
          <li><a href="#contact">Hubungi Kami</a></li>
          <li class="menu-has-children"><a href="#">Akun</a>
            <ul>
              
                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                    @endif
                @else
                    <li>
                        <a>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>
                      </li>
                      <li>
                        <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>

                      </li>
                            
                @endguest
            </ul>
          </li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro" style="background: linear-gradient(45deg, rgba(28, 99, 221, 0.8), rgba(29, 200, 205, 0.8)), url('{{config('desa.image_banner_url')}}') center top no-repeat;
  background-size: cover;">

    <div class="intro-text">
      <h2>{{config('desa.welcome_message')}}</h2>
      <p>{{config('desa.welcome_message_sub')}}</p>
      <a href="{{config('desa.welcome_message_button_url')}}" class="btn-get-started scrollto">{{config('desa.welcome_message_button_text')}}</a>
    </div>

    <div class="product-screens">

      <div class="product-screen-1 wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="0.6s">
        <img src="/avilon/img/desaku3.jpeg" alt="">
      </div>

      <div class="product-screen-2 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="0.6s">
        <img src="/avilon/img/desaku2.jpeg" alt="">
      </div>

      <div class="product-screen-3 wow fadeInUp" data-wow-duration="0.6s">
        <img src="/avilon/img/desaku4.jpeg" alt="">
      </div>

    </div>

  </section><!-- #intro -->

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="about" class="section-bg">
      <div class="container-fluid">
        <div class="section-header">
          <h3 class="section-title">Tentang DesaKu</h3>
          <span class="section-divider"></span>
          <p class="section-description">
            DesaKU adalah aplikasi mobile berbasis smatphone yang digunakan untuk memudahkan penyebaran informasi dari pemerintah desa kepada warganya baik itu program pemerintah desa itu sendiri maupun informasi mengenai program pemerintahan lainnya dan sarana komunikasi warga untuk memberi masukan ataupun laporan pada satu desa.
          </p>
        </div>

        <div class="row">
          <div class="col-lg-6 about-img wow fadeInLeft">
            <img src="/avilon/img/about-img.jpg" alt="">
          </div>

          <div class="col-lg-6 content wow fadeInRight">
            <h2>Lorem ipsum dolor sit amet, consectetur adipiscing elite storium paralate</h2>
            <h3>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</h3>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.
            </p>

            <ul>
              <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
              <li><i class="ion-android-checkmark-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
              <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
            </ul>

            <p>
              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec
            </p>
          </div>
        </div>

      </div>
    </section><!-- #about -->

    <!--==========================
      Product Featuress Section
    ============================-->
    <section id="features">
      <div class="container">

        <div class="row">

          <div class="col-lg-8 offset-lg-4">
            <div class="section-header wow fadeIn" data-wow-duration="1s">
              <h3 class="section-title">Fitur-fitur desaku</h3>
              <span class="section-divider"></span>
            </div>
          </div>

          <div class="col-lg-4 col-md-5 features-img">
            <img src="/avilon/img/product-features1.png" alt="" class="wow fadeInLeft">
          </div>

          <div class="col-lg-8 col-md-7 ">

            <div class="row">

              <div class="col-lg-6 col-md-6 box wow fadeInRight">
                <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
                <h4 class="title"><a href="">Lorem Ipsum</a></h4>
                <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident clarida perendo.</p>
              </div>
              <div class="col-lg-6 col-md-6 box wow fadeInRight" data-wow-delay="0.1s">
                <div class="icon"><i class="ion-ios-flask-outline"></i></div>
                <h4 class="title"><a href="">Dolor Sitema</a></h4>
                <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata noble dynala mark.</p>
              </div>
              <div class="col-lg-6 col-md-6 box wow fadeInRight" data-wow-delay="0.2s">
                <div class="icon"><i class="ion-social-buffer-outline"></i></div>
                <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
                <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur teleca starter sinode park ledo.</p>
              </div>
              <div class="col-lg-6 col-md-6 box wow fadeInRight" data-wow-delay="0.3s">
                <div class="icon"><i class="ion-ios-analytics-outline"></i></div>
                <h4 class="title"><a href="">Magni Dolores</a></h4>
                <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum dinoun trade capsule.</p>
              </div>
            </div>

          </div>

        </div>

      </div>

    </section><!-- #features -->

    <!--==========================
      More Features Section
    ============================-->
    <section id="more-features" class="section-bg">
      <div class="container">

        <div class="section-header">
          <h3 class="section-title">More Features</h3>
          <span class="section-divider"></span>
          <p class="section-description">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="box wow fadeInLeft">
              <div class="icon"><i class="ion-ios-stopwatch-outline"></i></div>
              <h4 class="title"><a href="">Lorem Ipsum</a></h4>
              <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident etiro rabeta lingo.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box wow fadeInRight">
              <div class="icon"><i class="ion-ios-bookmarks-outline"></i></div>
              <h4 class="title"><a href="">Dolor Sitema</a></h4>
              <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata nodera clas.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box wow fadeInLeft">
              <div class="icon"><i class="ion-ios-heart-outline"></i></div>
              <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
              <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur trinige zareta lobur trade.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box wow fadeInRight">
              <div class="icon"><i class="ion-ios-analytics-outline"></i></div>
              <h4 class="title"><a href="">Magni Dolores</a></h4>
              <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum rideta zanox satirente madera</p>
            </div>
          </div>

        </div>
      </div>
    </section><!-- #more-features -->

    <!--==========================
      Our Team Section
    ============================-->
    <section id="team" class="section-bg">
      <div class="container">
        <div class="section-header">
          <h3 class="section-title">Struktur Pemerintahan</h3>
          <span class="section-divider"></span>
        </div>
        <div class="row wow fadeInUp">
          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="/images/struktur/ri1.png" alt=""></div>
              <h4>Joko Widodo</h4>
              <span>Presiden RI</span>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="/images/struktur/ri2.png" alt=""></div>
              <h4>KH. Ma'ruf Amin</h4>
              <span>Wakil Presiden</span>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="/images/struktur/jabar1.png" alt=""></div>
              <h4>Ridwan Kamil</h4>
              <span>Gubernur Jawa Barat</span>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="/images/struktur/jabar2.png" alt=""></div>
              <h4>Uu Ruzhanul Ulum</h4>
              <span>Wakil Gubernur Jawa Barat</span>
            </div>
          </div>
        </div>
        <div class="row wow fadeInUp">
          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="/images/struktur/garut1.png" alt=""></div>
              <h4>Rudy Gunawan</h4>
              <span>Bupati Garut</span>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="/images/struktur/garut2.png" alt=""></div>
              <h4>dr. H. Helmi Budiman</h4>
              <span>Wakil Bupati Garut</span>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="/images/struktur/camat.png" alt=""></div>
              <h4>Drs.Sardiman Tanjung</h4>
              <span>Camat Cibatu</span>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="/images/struktur/kades.png" alt=""></div>
              <h4>Cecep Kurniansyah</h4>
              <span>Kepala Desa Kertajaya</span>
            </div>
          </div>
        </div>

      </div>
    </section><!-- #team -->

    <!--==========================
      Gallery Section
    ============================-->
    <section id="gallery">
      <div class="container-fluid">
        <div class="section-header">
          <h3 class="section-title">Gallery</h3>
          <span class="section-divider"></span>
          <p class="section-description">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
        </div>

        <div class="row no-gutters">

          <div class="col-lg-4 col-md-6">
            <div class="gallery-item wow fadeInUp">
              <a href="/avilon/img/gallery/gallery-1.jpg" class="gallery-popup">
                <img src="/avilon/img/gallery/gallery-1.jpg" alt="">
              </a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="gallery-item wow fadeInUp">
              <a href="/avilon/img/gallery/gallery-2.jpg" class="gallery-popup">
                <img src="/avilon/img/gallery/gallery-2.jpg" alt="">
              </a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="gallery-item wow fadeInUp">
              <a href="/avilon/img/gallery/gallery-3.jpg" class="gallery-popup">
                <img src="/avilon/img/gallery/gallery-3.jpg" alt="">
              </a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="gallery-item wow fadeInUp">
              <a href="/avilon/img/gallery/gallery-4.jpg" class="gallery-popup">
                <img src="/avilon/img/gallery/gallery-4.jpg" alt="">
              </a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="gallery-item wow fadeInUp">
              <a href="/avilon/img/gallery/gallery-5.jpg" class="gallery-popup">
                <img src="/avilon/img/gallery/gallery-5.jpg" alt="">
              </a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="gallery-item wow fadeInUp">
              <a href="/avilon/img/gallery/gallery-6.jpg" class="gallery-popup">
                <img src="/avilon/img/gallery/gallery-6.jpg" alt="">
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #gallery -->
    
    <!--==========================
      Product Advanced Featuress Section
    ============================-->
    <section id="advanced-features">
      <div class="section-header">
        <h2 class="section-title">Artikel Terbaru</h2>
        <span class="section-divider"></span>
        
      </div>
      
      @foreach ($posts as $post)
      <div class="features-row">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <img class="advanced-feature-img-left" src="{{$post->thumbnail()}}" alt="thumbnail">
              <div class="wow fadeInRight">
                <h2>{{$post->title}}</h2>
                <a href="{{route('site.single.post',$post->slug)}}">Baca selengkapnya</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      @endforeach
    </section><!-- #advanced-features -->


    <!--==========================
      Contact Section
    ============================-->
    <section id="contact">
      <div class="container">
        <div class="row wow fadeInUp">

          <div class="col-lg-4 col-md-4">
            <div class="contact-about">
              <h3>{{config('desa.title_header')}}</h3>
              <p>Cras fermentum odio eu feugiat. Justo eget magna fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
              <div class="social-links">
                <a href="{{config('desa.twitter')}}" class="twitter"><i class="fa fa-twitter"></i></a>
                <a href="{{config('desa.facebook')}}" class="facebook"><i class="fa fa-facebook"></i></a>
                <a href="{{config('desa.instagram')}}" class="instagram"><i class="fa fa-instagram"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="info">
              <div>
                <i class="ion-ios-location-outline"></i>
                <p>{{config('desa.jalan')}} {{config('desa.desa')}}
                  <br>Kec. {{config('desa.kecamatan')}}, Kab. {{config('desa.kabupaten')}}
                  <br>{{config('desa.propinsi')}}, {{config('desa.kodepos')}}
                </p>
              </div>

              <div>
                <i class="ion-ios-email-outline"></i>
                <p>{{config('desa.email')}}</p>
              </div>

              <div>
                <i class="ion-ios-telephone-outline"></i>
                <p>{{config('desa.telepon')}}</p>
              </div>

            </div>
          </div>

          <div class="col-lg-5 col-md-8">
            <div class="form">
              <div id="sendmessage">Your message has been sent. Thank you!</div>
              <div id="errormessage"></div>
              <form action="" method="post" role="form" class="contactForm">
                <div class="form-row">
                  <div class="form-group col-lg-6">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-6">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                    <div class="validation"></div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit" title="Send Message">Send Message</button></div>
              </form>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #contact -->

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 text-lg-left text-center">
          <div class="copyright">
            &copy; Copyright <strong>DesaKU</strong>. All Rights Reserved
          </div>
          <div class="credits">
            
            DesaKU versi 1.0.0 by <a href="https://fiaangkasa.co.id/">fiaangkasa</a>
          </div>
        </div>
        <div class="col-lg-6">
          <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
            <a href="#intro" class="scrollto">Home</a>
            <a href="#about" class="scrollto">About</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms of Use</a>
          </nav>
        </div>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="/avilon/lib/jquery/jquery.min.js"></script>
  <script src="/avilon/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/avilon/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/avilon/lib/easing/easing.min.js"></script>
  <script src="/avilon/lib/wow/wow.min.js"></script>
  <script src="/avilon/lib/superfish/hoverIntent.js"></script>
  <script src="/avilon/lib/superfish/superfish.min.js"></script>
  <script src="/avilon/lib/magnific-popup/magnific-popup.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="/avilon/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/avilon/js/main.js"></script>

</body>
</html>
