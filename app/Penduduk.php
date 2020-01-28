<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Penduduk extends Model
{
    protected $table = 'tweb_penduduk';
    protected $fillable = ['nama','nik','email','sex','tempatlahir','user_id','foto'];
    protected $dates = ['created_at','updated_at','date_uploaded','tanggallahir'];
    
    public function getFoto(){
        if(!$this->foto){
            return asset('images/penduduk/default.png');
        }
        return asset('images/penduduk/'.$this->foto);
    }
}
