<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $fillable = ['model_id','name','price','document'];

    public function product_spesifications(){
        return $this->hasMany('App\ProductSpesification');
    }
}
