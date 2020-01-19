<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductModel extends Model
{
    //
    protected $fillable = ['name','description','image','document'];

    public function products(){
        return $this->hasMany('App\Product','model_id','id');
    }

    public function model_features(){
        return $this->hasMany('App\ModelFeature');
    }
}
