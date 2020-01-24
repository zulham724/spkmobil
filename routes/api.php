<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user()->load([
        'orders.order_status',
        'orders.products.product_model',
        'orders.payments',
        'orders.order_product.model_color',
        'orders'=>function($query){
            $query->withCount(['payments as paid'=>function($query){
                $query->select(DB::raw('SUM(value)'));
            }]);
        }
    ]);
});

Route::group(['prefix'=>'v1','namespace'=>'API\\v1'],function(){
    Route::group(['middleware'=>['auth:api']],function(){
        Route::resources([
            'order'=>'OrderController'
        ]);
    });
    Route::post('/productmodels/search','ProductModelController@search');
});
