<?php

namespace App\Http\Controllers\API\v1;

use App\Http\Controllers\Controller;
use App\ProductModel;
use Illuminate\Http\Request;

class ProductModelController extends Controller
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
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ProductModel  $productModel
     * @return \Illuminate\Http\Response
     */
    public function show(ProductModel $productModel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ProductModel  $productModel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProductModel $productModel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ProductModel  $productModel
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $productmodel = ProductModel::findOrfail($id)->delete();
        return response()->json($productmodel);
    }

    public function search(Request $request){
        // dd($request);
        $productmodels = ProductModel::
        where('output_year','>',$request->year_start)
        ->where('output_year','<',$request->year_end)
        ->whereHas('products',function($query)use($request){
            $query->where('price','>',$request->budget_start)
            ->where('price','<',$request->budget_end);
        })
        ->get();
        return response()->json($productmodels);
    }
}
