<!DOCTYPE html>
<html lang="en">
<head>
<title>{{ config('app.name')}}</title>

      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <link rel="stylesheet" href="{{  asset('vegefoods/css/open-iconic-bootstrap.min.css') }}">
      <link rel="stylesheet" href="{{  asset('vegefoods/css/animate.css') }}">

      <link rel="stylesheet" href="{{  asset('vegefoods/css/owl.carousel.min.css') }}">
      <link rel="stylesheet" href="{{  asset('vegefoods/css/owl.theme.default.min.css') }}">
      <link rel="stylesheet" href="{{  asset('vegefoods/css/magnific-popup.css') }}">

      <link rel="stylesheet" href="{{  asset('vegefoods/css/aos.css') }}">

      <link rel="stylesheet" href="{{  asset('vegefoods/css/ionicons.min.css') }}">

      <link rel="stylesheet" href="{{  asset('vegefoods/css/bootstrap-datepicker.css') }}">
      <link rel="stylesheet" href="{{  asset('vegefoods/css/jquery.timepicker.css') }}">


      <link rel="stylesheet" href="{{  asset('vegefoods/css/flaticon.css') }}">
      <link rel="stylesheet" href="{{  asset('vegefoods/css/icomoon.css') }}">
      <link rel="stylesheet" href="{{  asset('vegefoods/css/style.css') }}">
</head>
<body class="goto-here">


    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container-fluid">
	      <a class="navbar-brand" href="{{  asset('vegefoods/index.php') }}">Suzuki</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="/" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="{{route('productmodel.index')}}" class="nav-link">Mobil</a></li>
            <li class="nav-item"><a href="{{route('contact')}}" class="nav-link">Kontak</a></li></li>
                @guest
                    <li class="nav-item cta cta-colored"><a href="{{route('login')}}" class="nav-link">Login</a>
                @else
                  <li class="nav-item cta cta-colored dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="rounded-circle" src="{{asset('storage/'.Auth::user()->avatar)}}" width="20" height="20" alt="profile"/>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item disabled">Hai, {{ Auth::user()->name }}!</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="{{route('profile')}}">Profil</a>
                      <a class="dropdown-item" href="{{route('order.index')}}">Pemesanan</a>
                      <a class="dropdown-item" href="">Logout</a>
                    </div>
                  </li>
                @endguest
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    <style type="text/css">
		.ftco-navbar-light .navbar-nav > .nav-item .dropdown-menu .dropdown-item:hover, .ftco-navbar-light .navbar-nav > .nav-item .dropdown-menu .dropdown-item:focus {background-color: #82ae46!important; color: #fff!important;}
    </style>

    @yield('content')
    <hr>

    <footer class="ftco-footer ftco-section">
        <div class="container">
            <div class="row">
                <div class="mouse">
                  <a href="#" class="mouse-icon">
                      <div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
                  </a>
              </div>
            </div>
          <div class="row">
            <div class="col-md-12 text-center">
              <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright © {{  date('Y') }} <a href="#" target="_blank">{{  config('app.name') }}</a>. All rights reserved.			  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              </p>
            </div>
          </div>
        </div>
      </footer>


  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>



  <script src="{{  asset('vegefoods/js/jquery.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/jquery-migrate-3.0.1.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/popper.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/bootstrap.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/jquery.easing.1.3.js') }}"></script>
  <script src="{{  asset('vegefoods/js/jquery.waypoints.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/jquery.stellar.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/owl.carousel.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/jquery.magnific-popup.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/aos.js') }}"></script>
  <script src="{{  asset('vegefoods/js/jquery.animateNumber.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/bootstrap-datepicker.js') }}"></script>
  <script src="{{  asset('vegefoods/js/scrollax.min.js') }}"></script>
  <script src="{{  asset('vegefoods/js/main.js') }}"></script>

</body>
</html>
