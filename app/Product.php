<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $fillable = ['model_id','name','price'];

    public function product_spesifications(){
        return $this->hasMany('App\ProductSpesification');
    }

    public function product_model(){
        return $this->belongsTo('App\ProductModel','model_id','id');
    }
}
