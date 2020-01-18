<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductSpesification extends Model
{
    //
    protected $fillable = ['product_id','name','image','description','value'];
}
