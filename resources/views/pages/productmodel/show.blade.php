@extends('layouts.vegefoods') 
@section('css')
    <style>
        .table {min-width: auto !important;}
        .table tbody tr td {padding: .75rem; padding-left: 0; text-align: left !important;}
    </style>
@endsection
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
                    {{--
                    <order-component :product_model="{{$product_model}}"></order-component> --}} {{--
                    <spk-component :product_model="{{$product_model}}"></spk-component> --}}
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
            <p class="text-justify">{{$product_model->description}}</p>
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
                            @foreach ($product_model->model_features as $mf => $model_feature)
                            <li class="nav-item">
                                <a class="nav-link {{$mf==0? 'active': null}}" id="{{$model_feature->name}}-tab" data-toggle="tab" href="#{{$model_feature->name}}" role="tab" aria-controls="{{$model_feature->name}}" aria-selected="true">{{$model_feature->name}}</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="tab-content mt-3">
                    @foreach ($product_model->model_features as $mf => $model_feature)
                    <div class="tab-pane {{$mf==0 ? 'active': null}}" id="{{$model_feature->name}}" role="tabpanel" aria-labelledby="{{$model_feature->name}}-tab">
                        <div class="row">
                            <div class="col-12">
                                <img class="img-fluid mx-auto my-3 d-block" src="/storage/{{$model_feature->image}}">
                            </div>
                            <div class="col-12">
                                <p class="text-justify"></p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<model-color-component :product_model="{{$product_model}}"></model-color-component>

<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
    <div class="container py-4">
        <div class="row">
            <div class="col-lg-6 col-md-8 mx-auto mb-5 ftco-animate">
                <h3 class="text-center">Pricelist</h3>
                <table class="table">
                    @foreach($product_model->products as $product)
                    <tr>
                        <td width="50%">{{$product->name}}</td>
                        <td width="50%" style="text-align: right!important;">Rp. {{ number_format($product->price, 2, ',', ',') }}</td>
                    </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
</section>

@endsection
