<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Photoarticle extends Model
{
    use SoftDeletes;

    protected $table = 'photo_article';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        'article_id',
        'photo',
        'source',
        'photo_title',
        'desc',
        
    ];    

     /**
         * The attributes that should be hidden for arrays.
         *
         * @var array
         */
    protected $hidden = [
        'created_at', 'updated_at'
    ];
}
