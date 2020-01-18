<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductModel extends Model
{
    //
    protected $fillable = ['name','description','image'];

    public function products(){
        return $this->hasMany('App\Product');
    }

    public function model_features(){
        return $this->hasMany('App\ModelFeature');
    }
}
