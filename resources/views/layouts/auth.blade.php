<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Fia Angkasa, Perusahaan IT Berpengalaman di Bandung, Web Development, Software, Mobile App"
    />
    
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- /meta tags -->
    <!-- custom style sheet -->
    <!-- Styles -->
    <link href="{{ asset('css/login.css') }}" rel="stylesheet">
    <!-- /custom style sheet -->
    <!-- fontawesome css -->
    <link href="{{ asset('css/fontawesome-all.css') }}" rel="stylesheet">
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- /google fonts-->
    
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

</head>


<body>
    <a class="navbar-brand" href="{{ url('/') }}">
        <h1>DESA TONJONG</h1>
    </a>
    @yield('content')
    
    <footer>
        <p> &copy; 2020 All Rights Reserved | Design by <a href="http://fiaangkasa.co.id">FIA ANGKASA</a></p>
    </footer>

</body>

</html>