<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Master extends Model
{
    protected $table = 'master_kategori';
    protected $fillable = ['kategori','kode','keterangan'];
}
