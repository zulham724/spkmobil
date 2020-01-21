@extends('layouts.vegefoods')
@section('content')
    <section class="p-0" style="height: calc(100vh - 67px); background-image: url({{ asset('storage/'.str_replace('\\','/',$product_model->image)) }}); background-size: cover; background-position: inherit;">
        <div class="col">
            <div class="row">
                <div class="col-md-5 ml-auto car-link" style="height: calc(100vh - 67px); background: rgba(0,0,0,.6);">
                    <p class="h1 border-bottom border-success my-3 text-light text-uppercase"></p>
                <p class="h6 mb-0" style="color: #bebebe !important;">Harga dimulai dari</p>
                <p class="h3" style="color: #bebebe !important;">Rp. {{number_format($product_model->products[0]->price,'2',',','.')}}</p>
                    <div class="row mt-3">
                            <buy-component :product_model="{{$product_model}}"></buy-component>
                    		{{-- <order-component :product_model="{{$product_model}}"></order-component> --}}
                            {{-- <spk-component :product_model="{{$product_model}}"></spk-component> --}}
                            <download-brochure-component :product_model="{{$product_model}}"></download-brochure-component>
                    		<credit-component :product_model="{{$product_model}}"></credit-component>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-5 ftco-animate">
                    <h3>Deskripsi</h3>
                    <p class="text-justify"></p>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-5 ftco-animate">
                    <div class="row">
                        <div class="col-sm col-12 pt-2 pt-sm-0 text-center text-sm-left">
                            <span class="h3">Fitur</span>
                        </div>
                        <div class="col-sm-auto pb-2 pb-sm-0 col-12">
                            <ul class="nav nav-pills nav-fill justify-sm-content-end" id="myTab" role="tablist">
                              <li class="nav-item">
                                <a class="nav-link active" id="eksterior-tab" data-toggle="tab" href="#eksterior" role="tab" aria-controls="eksterior" aria-selected="true">Eksterior</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" id="interior-tab" data-toggle="tab" href="#interior" role="tab" aria-controls="interior" aria-selected="true">Interior</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" id="performa-tab" data-toggle="tab" href="#performa" role="tab" aria-controls="performa" aria-selected="true">Performa</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" id="keamanan-tab" data-toggle="tab" href="#keamanan" role="tab" aria-controls="keamanan" aria-selected="true">Keamanan</a>
                              </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content mt-3">
                        <div class="tab-pane active" id="eksterior" role="tabpanel" aria-labelledby="eksterior-tab">
                            <div class="row">
                                <div class="col-12">
                                    <img class="img-fluid mx-auto my-3 d-block" src="">
                                </div>
                                <div class="col-12">
                                    <p class="text-justify"></p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="interior" role="tabpanel" aria-labelledby="interior-tab">
                            <div class="row">
                                <div class="col-12">
                                    <img class="img-fluid mx-auto my-3 d-block" src="">
                                </div>
                                <div class="col-12">
                                    <p class="text-justify"></p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="performa" role="tabpanel" aria-labelledby="performa-tab">
                            <div class="row">
                                <div class="col-12">
                                    <img class="img-fluid mx-auto my-3 d-block" src="">
                                </div>
                                <div class="col-12">
                                    <p class="text-justify"></p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="keamanan" role="tabpanel" aria-labelledby="keamanan-tab">
                            <div class="row">
                                <div class="col-12">
                                    <img class="img-fluid mx-auto my-3 d-block" src="">
                                </div>
                                <div class="col-12">
                                    <p class="text-justify"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-5 ftco-animate">
                    <h3 class="mb-4">Varian Warna</h3>
                    <div class="row">
                        {{-- {{
                            foreach($model_mobil['varian_warna'] as $key=>$varian_warna):
                        }}
                        <div class="col-4 col-sm-3 col-md-2">
                            <div class="custom-control custom-radio">
                                <input type="radio" name="varian_warna" id="warna-{{  $varian_warna['warna'] }}" class="custom-control-input varian-warna" data-id="{{  $key }}" value="{{  $varian_warna['warna'] }}" {{  $key==0 ? 'checked' : '' }}>
                                <label class="custom-control-label" for="warna-{{  $varian_warna['warna'] }}">Warna {{  ($key+1) }}</label>
                            </div>
                        </div>
                        {{
                            endforeach;
                        }} --}}
                    </div>
                    <div class="row my-3 py-2 border-top border-secondary">
                        <div class="col-sm-12">
                            {{-- <h4 class="text-center nama-warna">{{  $model_mobil['varian_warna'][0]['warna'] }}</h4> --}}
                        </div>
                        <div class="col-sm-8 mx-auto">
                            {{-- <img class="img-fluid gambar-warna" src="{{  asset('vegefoods/uploads/mobil/'.$model_mobil['varian_warna'][0]['gambar']) }}"> --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
        <div class="row">
            <div class="col-lg-6 col-md-8 mx-auto mb-5 ftco-animate">
                <h3 class="text-center">Pricelist</h3>
                <table class="table">
                    {{-- {{
                        foreach($mobil as $row):
                    }}
                    <tr>
                        <td width="50%">{{  $row['tipe_mobil'] }}</td>
                        <td width="50%" style="text-align: right!important;">Rp. {{  number_format($row['harga'], 0, ',', ',') }}</td>
                    </tr>
                    {{
                        endforeach;
                    }} --}}
                </table>
            </div>
        </div>
      </div>
    </section>

@endsection
