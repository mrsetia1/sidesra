<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelayanan extends Model
{
    protected $table = 'laporan';
    protected $fillable = ['category_id','content','user_id','foto'];
    protected $dates = ['created_at','updated_at'];
}
