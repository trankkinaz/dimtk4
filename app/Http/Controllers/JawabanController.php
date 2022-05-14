<?php

namespace App\Http\Controllers;

use App\Models\Jawaban;
use Illuminate\Http\Request;
use App\Models\KuesionerFlat;
use Illuminate\Support\Facades\DB;

class JawabanController extends Controller
{
    
    /**
     * show angket result page as default pages (index)
     * 
     */
    public function index()
    {
      
       //get kuesioner summary by dimensi
       $smyDimensi=DB::table('view_kuesioner_smy_dimensi')->get();

        return view('jawaban.index',[
            'idpage'=>'jawabanIndex',
            'title'=>'Hasil Angket Scorecard'
        ])->with('smyDimensi',$smyDimensi);
    }

    /**
     * show angket form
     */
    public function create()
    {
        //create custom query from kuesioner with jawaban join to provide edit method 
        $kuesioners=KuesionerFlat::where('username',auth()->user()->username)->get();
      
        return view('jawaban.create',[
            'idpage'=>'jawabanCreate',
            'title'=>'Isi Angket Scorecard'
        ])->with('kuesioners',$kuesioners);
    }

     /**
     * Store data jawaban with Update or create method
     * based on id_kuesioner and username
     */
    public function store(Request $request, Jawaban $jawaban)
    {
        $request->validate([
            'id_kuesioner'=>'required',
            'username'=>'required'
        ]);

        $arrId=$request->id_kuesioner;
        $arrJwb=$request->jawaban;
        $arrUser=$request->username;
        for($i=0;$i<count($arrId);$i++ ){
            Jawaban::updateOrCreate(
                ['id_kuesioner'=>$arrId[$i],'username'=>$arrUser[$i]],
                ['jawaban'=>$arrJwb[$i]]
            );
        }
   
        return view('jawaban.index',[
            'idpage'=>'jawabanIndex',
            'title'=>'Hasil Angket Scorecard'
        ]);

    }
}
