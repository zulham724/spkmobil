<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ModelFeature extends Model
{
    //
    protected $fillable = ['model_id','name','image','description','value'];
}
