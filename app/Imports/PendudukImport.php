<?php

namespace App\Imports;

use App\Penduduk;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow; //TAMBAHKAN CODE INI

use Illuminate\Contracts\Queue\ShouldQueue; //IMPORT SHOUDLQUEUE
use Maatwebsite\Excel\Concerns\WithChunkReading; //IMPORT CHUNK READING

class PendudukImport implements ToModel, WithHeadingRow, WithChunkReading, ShouldQueue // USE CLASS YANG DIIMPORT
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Penduduk([
            'nama' => $row['nama'],
            'nik' => $row['nik'], 
            'tempatlahir' => $row['tempatlahir'], 
        ]);
    }
    
    //LIMIT CHUNKSIZE
    public function chunkSize(): int
    {
        return 6000; //ANGKA TERSEBUT PERTANDA JUMLAH BARIS YANG AKAN DIEKSEKUSI
    }
}
