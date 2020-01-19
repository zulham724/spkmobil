@extends('layouts.vegefoods')
@section('content')
<section id="home-section" class="hero">
    <div class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url({{  asset('vegefoods/images/bg_1.jpg') }});">
          <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-12 ftco-animate text-center">
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url({{  asset('vegefoods/images/bg_2.jpg') }});">
          <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

          </div>
        </div>
      </div>
    </div>
</section>

    <section class="ftco-section ftco-category">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-6 order-md-last align-items-stretch d-flex">
                            <div class="category-wrap-2 ftco-animate img align-self-stretch d-flex" style="background-image: url({{  asset('vegefoods/images/category.jpg') }});">

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url({{  asset('vegefoods/images/category-1.jpg') }});">

                            </div>
                            <div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url({{  asset('vegefoods/images/category-2.jpg') }});">

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url({{  asset('vegefoods/images/category-3.jpg') }});">

                    </div>
                    <div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url({{  asset('vegefoods/images/category-4.jpg') }});">

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section img" style="background-image: url({{  asset('vegefoods/images/bg_3.jpg') }});">
    <div class="container">
            <div class="row justify-content-end">
      <div class="col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate">
          <span class="subheading">Best Price For You</span>
        <h2 class="mb-4 text-dark">Deal of the day</h2>
        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
    </div>
    </div>
</section>
@endsection
