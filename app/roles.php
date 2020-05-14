<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class roles extends Model
{
    protected $table = "role";
    protected $guarded = [];

    public function user()
    {
    	return $this->hasMany('App\User');
    }
}
