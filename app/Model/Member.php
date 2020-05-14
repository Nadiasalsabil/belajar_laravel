<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Member extends Model
{
    use SoftDeletes;

    protected $table = 'member';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        'name',
        'sex',
        'photo',
        'path',
        'no_hp',
        'address',
        'birth_place',
        'birth_date',
        'status',
    ];    

     /**
         * The attributes that should be hidden for arrays.
         *
         * @var array
         */
    protected $hidden = [
        'created_at', 'updated_at'
    ];

    public function user()
    {
        return $this->belongsTo('\App\User', 'id', 'member_id');
    }
}
