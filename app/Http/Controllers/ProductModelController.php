<?php

namespace App\Http\Controllers;

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
        $data['product_models'] = ProductModel::with(['model_colors','products'=>function($query){
            $query->orderBy('price','asc');
        }])->get();
        // dd($data);
        return view('pages.productmodel.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
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
    public function show($id)
    {
        //
        $data['product_model'] = ProductModel::with('model_colors')->findOrFail($id);
        // dd($data);
        return view('pages.productmodel.show',$data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ProductModel  $productModel
     * @return \Illuminate\Http\Response
     */
    public function edit(ProductModel $productModel)
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
    public function destroy(ProductModel $productModel)
    {
        //
    }

    public function download($id){
        $productmodel = ProductModel::findorFail($id);
        return redirect('/storage/'.$productmodel->document);
    }
}
