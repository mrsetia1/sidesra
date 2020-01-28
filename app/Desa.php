<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Desa extends Model
{
    protected $table = 'config';
    protected $fillable = ['nama_desa','nama_kepala_desa','email_desa','telepon','website','nama_kecamatan','nama_propinsi'];
}
