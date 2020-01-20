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
        return $this->hasMany('App\ModelFeature','model_id','id');
    }

    public function model_colors(){
        return $this->hasMany('App\ModelColor','model_id','id');
    }
}
