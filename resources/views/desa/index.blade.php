@extends('layouts.app')
@section('content')
@if(session('sukses'))
<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif
<div class="row">
    @foreach ($data_desa as $desa)
    <div class="col-12">
        <div class="callout callout-info">
            <!-- title row -->
            <div class="row">
                <div class="col-12">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <tbody><tr>
                                    <td colspan="3">
                                        <img class="profile-user-img img-responsive img-circle" src="http://localhost/desatonjong/desa/logo/tonjong__sid__5nglfuT.jpg" alt="Lambang Desa">
                                    </td>
                                </tr>
                            </tbody></table>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <tbody>
                                    <tr>
                                        <td width="300">Nama Desa</td><td width="1">:</td>
                                        <td>{{$desa->nama_desa}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">Kepala Desa</td><td width="1">:</td>
                                        <td>{{$desa->nama_kepala_desa}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">NIP Kepala Desa</td><td width="1">:</td>
                                        <td>{{$desa->nip_kepala_desa}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">E-Mail Desa</td><td width="1">:</td>
                                        <td>{{$desa->email_desa}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">Telpon Desa</td><td width="1">:</td>
                                        <td>{{$desa->telepon}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">Website Desa</td><td width="1">:</td>
                                        <td>{{$desa->website}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">Alamat Kantor Desa</td><td width="1">:</td>
                                        <td>{{$desa->alamat_kantor}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">Kecamatan</td><td width="1">:</td>
                                        <td>{{$desa->nama_kecamatan}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">Kabupaten</td><td width="1">:</td>
                                        <td>{{$desa->nama_kabupaten}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">Provinsi</td><td width="1">:</td>
                                        <td>{{$desa->nama_propinsi}}</td>
                                    </tr>
                                    <tr>
                                        <td width="300">Kode Pos Desa</td><td width="1">:</td>
                                        <td>{{$desa->kode_pos}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach
</div>
@endsection