@extends('layouts.vegefoods')
@section('content')
<div class="hero-wrap hero-bread" style="background-image: url({{  asset('vegefoods/files/suzuki-wallpaper.jpg') }});">
    <div class="w-100" style="background-color: rgba(0,0,0,.6);">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 ftco-animate text-center">
          <p class="breadcrumbs"><span><a href="">Home</a></span> > <span>Pemesanan</span></p>
          <h1 class="mb-0 bread">Pemesanan</h1>
        </div>
      </div>
    </div>
  </div>

  <section class="ftco-section">
    <div class="container">
      <div class="row justify-content-center mb-3 pb-3">
        <div class="col-md-12 heading-section text-center ftco-animate">
          <span class="subheading">Cara Pembayaran</span>
          <!-- <h2 class="mb-4">Mobil</h2> -->
          <p>Pilih cara pembayaran yang tepat untuk Anda!</p>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-4 mb-3 ftco-animate">
          <div class="cart-total">
            <h3>Pembayaran Cash (Transfer)</h3>
            <p>Bisa dibayarkan lewat transfer ke:<br>Bank BCA Cabang Pemuda<br>Atas nama PT. Duta Cemerlang Motors<br>No. 009-3053962</p>
            <p>Kemudian melakukan konfirmasi pembayaran.</p>
          </div>
        </div>
        <div class="col-md-4 mb-3 ftco-animate">
          <div class="cart-total">
            <h3>Pembayaran Cash (On the Spot)</h3>
            <p>Bisa dibayarkan lewat kasir PT. Duta Cemerlang Motors.</p>
          </div>
        </div>
        <div class="col-md-4 mb-3 ftco-animate">
          <div class="cart-total">
            <h3>Pembayaran Kredit</h3>
            <p class="mb-0">Kredit bisa dibayarkan lewat beberapa perusahaan pembiayaan:</p>
            <ol>
              <li>Suzuki Finance</li>
              <li>ADIRA Finance</li>
              <li>Mandiri Tunas Finance</li>
              <li>BCA Finance</li>
              <li>Indomobil Finance</li>
              <li>Mandiri Utama Finance</li>
              <li>BII Finance</li>
            </ol>
            <p>Kemudian melakukan konfirmasi pembayaran.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <order-list-component></order-list-component>
@endsection
