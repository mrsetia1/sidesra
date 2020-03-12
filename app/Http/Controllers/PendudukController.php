<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Penduduk;
use PDF;
use Session;
use App\Exports\PendudukExport;
use App\Imports\PendudukImport;
use App\Jobs\ImportJob;
use Excel;
use App\Http\Controllers\Controller;

class PendudukController extends Controller
{
    public function index(Request $request){
        if($request->has('cari')){
            $data_penduduk =\App\Penduduk::where('nama','LIKE','%'.$request->cari.'%')->paginate(10);
        }else{
            $data_penduduk = \App\Penduduk::paginate(10);
        }
        return view('panel.penduduk.index',['data_penduduk'=> $data_penduduk]);
    }

    public function create(Request $request){

        //insert ke table user
        $user = new \App\User;
        $user->role_id = '2';
        $user->name = $request->nama;
        $user->email = $request->email;
        $user->password = bcrypt('123456');
        $user->remember_token = Str::random(60);
        $user->save();
        
        //insert ke table penduduk
        $request->request->add(['user_id' => $user->id]);
        $penduduk = \App\Penduduk::create($request->all());
        
        return redirect('/penduduk')->with('sukses','Data Berhasil Ditambahkan!');
    }

    public function edit($id){
        $penduduk = \App\Penduduk::find($id);
        return view('penduduk/edit', ['penduduk'=>$penduduk]);
    }

    public function update(Request $request, $id){
        $penduduk = \App\Penduduk::find($id);
        $penduduk->update($request->all());
        if($request->hasFile('foto')){
            $request->file('foto')->move('images/penduduk/',$request->file('foto')->getClientOriginalName());
            $penduduk->foto = $request->file('foto')->getClientOriginalName();
            $penduduk->save();
        }
        return redirect('\penduduk')->with('sukses','Data Berhasil Diupdate!');
    }

    public function delete($id){
        $penduduk = \App\Penduduk::find($id);
        $penduduk->delete();
        return redirect('\penduduk')->with('sukses','Data Berhasil Dihapus!');
    }

    public function profil($id){
        $penduduk = \App\Penduduk::find($id);
        return view('panel.penduduk.profil',['penduduk'=>$penduduk]);

    }

    //LAPORAN
    public function cetak()
    {
    	$penduduk = \App\Penduduk::all();
 
    	$pdf = PDF::loadview('penduduk.pdf',['penduduk'=>$penduduk]);
    	return $pdf->download('data-penduduk-pdf.pdf');
    }
    public function export_excel()
	{
		return Excel::download(new PendudukExport, 'datapenduduk.xlsx');
    }
    public function import_excel(Request $request) 
	{
		// validasi
		$this->validate($request, [
			'file' => 'required|mimes:csv,xls,xlsx'
        ]);
        if ($request->hasFile('file')) {
            //UPLOAD FILE
            $file = $request->file('file');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->storeAs(
                'public/file_penduduk', $filename
            );
            
            //MEMBUAT JOBS DENGAN MENGIRIMKAN PARAMETER FILENAME
            ImportJob::dispatch($filename);
            return redirect()->back()->with(['sukses' => 'Upload success']);
        }  
        return redirect()->back()->with(['error' => 'Please choose file before']);
 
	}
}
