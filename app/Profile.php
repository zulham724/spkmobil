<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    //
    protected $fillable = ['user_id','home_address','identity_number','contact_number'];

    public function user(){
        return $this->belongsTo('App\User');
    }
}
