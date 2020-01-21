@extends('layouts.vegefoods')
@section('content')
<div class="hero-wrap hero-bread" style="background-image: url({{ asset('vegefoods/files/suzuki-wallpaper.jpg') }});">
    <div class="w-100" style="background-color: rgba(0,0,0,.6);">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 ftco-animate text-center">
          <p class="breadcrumbs"><span><a href="/">Home</a></span> > <span>Mobil</span></p>
          <h1 class="mb-0 bread">Mobil</h1>
        </div>
      </div>
    </div>
  </div>

  <section class="ftco-section">
    <div class="container">
           <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section text-center ftco-animate">
                <span class="subheading">Mobil Tersedia</span>
              <!-- <h2 class="mb-4">Mobil</h2> -->
              <p>Temukan Mobil Suzuki yang tepat untuk Anda!</p>
              <center><spk-component></spk-component></center>
            </div>
      </div>
      </div>
      <div class="container">
          <div class="row">
              @foreach($product_models as $product_model)
              <div class="col-md-6 col-lg-3 ftco-animate">
                  <div class="product">
                      <div class="text py-3 pb-4 px-3 text-center">
                          <h3 class="font-weight-bold"><a href="">{{  $product_model->name }}</a></h3>
                          <div class="d-flex">
                              <div class="w-100">
                                  <small>Mulai dari:</small>
                              <p class="price"><span class="price-sale">Rp. {{$product_model->products[0]->price}}</span></p>
                              </div>
                          </div>
                      </div>
                    <a href="{{route('productmodel.show',$product_model->id)}}" class="img-prod text-center py-1"><img class="img-fluid" src="{{ asset('storage/'.$product_model->image) }}" style="width:80% !important;">
                          <div class="overlay"></div>
                      </a>
                  </div>
              </div>
              @endforeach
          </div>
      </div>
  </section>

  <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
    <div class="container py-4">
      <div class="row d-flex justify-content-center py-5">
        <div class="col-md-6">
            <h2 style="font-size: 22px;" class="mb-0">Subcribe to our Newsletter</h2>
            <span>Get e-mail updates about our latest shops and special offers</span>
        </div>
        <div class="col-md-6 d-flex align-items-center">
          <form action="#" class="subscribe-form">
            <div class="form-group d-flex">
              <input type="text" class="form-control" placeholder="Enter email address">
              <input type="submit" value="Subscribe" class="submit px-3">
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
@endsection
