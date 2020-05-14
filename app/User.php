<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $table = "users";
    protected $dates = ['deleted_at'];

    protected $fillable = [
        'name', 'username', 'member_id', 'email', 'password','role_id',
    ];

    // modal nya disini

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function role(){
        return $this->belongsTo('App\roles', 'role_id', 'id');
    }

   
    public function employee(){
        return $this->belongsTo('App\Model\Member', 'member_id', 'id');
    }


    

    
    

    
}