<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    //
    protected $fillable = ['order_id','name','description','value'];

    public function order(){
        return $this->belongsTo('App\Order');
    }
}
