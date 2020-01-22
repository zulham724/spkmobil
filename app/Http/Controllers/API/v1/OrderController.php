<?php

namespace App\Http\Controllers\API\v1;

use App\Http\Controllers\Controller;
use App\Order;
use App\Product;
use App\Payment;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $order = new Order($request->order);
        $order->status_id = $request->order['dp'] ? 4 : 2;
        $request->user()->orders()->save($order);
        $request->order['dp'] ? $order->payments()->save(new Payment(['name'=>'DP','value'=>$request->order['dp']])) : null;
        $order->products()->sync([$request->product['id']=>['color'=>$request->color['name']]]);
        return response()->json($order->load('products','payments'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
        $order->delete();
        return response()->json($order);
    }
}
