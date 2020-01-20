<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    protected $fillable = ['user_id','status_id','description','shipping_address','contact_number','total_amount'];

    public function user(){
        return $this->belongsTo('App\User');
    }

    public function order_status(){
        return $this->belongsTo('App\OrderStatus');
    }

    public function payments(){
        return $this->hasMany('App\Payment');
    }

    public function products(){
        return $this->belongsToMany('App\Product','order_products')->withTimestamps()->withPivot(['quantity','model_color_id','color']);
    }
}
