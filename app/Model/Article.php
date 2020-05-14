<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Article extends Model
{
    use SoftDeletes;

    protected $table = 'article';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        'title',
        'sumber',
        'tgl_post',
        'member_id',
        'content',
        'is_deleted',
        'deleted_by',
    ];    

     /**
         * The attributes that should be hidden for arrays.
         *
         * @var array
         */
    protected $hidden = [
        'created_at', 'updated_at'
    ];

    public function membersss()
    {
        return $this->belongsTo('\App\Model\member', 'member_id', 'id');
    }
}
