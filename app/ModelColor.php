<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ModelColor extends Model
{
    //
    protected $filllable = ['model_id','name','image','description'];

    public function product_models(){
        return $this->hasMany('App\ProductModel');
    }
}
