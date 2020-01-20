<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderProduct extends Model
{
    //
    protected $fillable = ['order_id','product_id','model_color_id','color','quantity'];

    public function model_color(){
        return $this->belongsTo('App\ModelColor');
    }
}
