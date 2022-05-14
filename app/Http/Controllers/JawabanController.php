<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Jawaban;
use App\Models\Kuesioner;

class JawabanController extends Controller
{
    
    /**
     * show angket result page as default pages (index)
     * 
     */
    public function index()
    {
       
        return view('jawaban.index',[
            'idpage'=>'jawabanIndex',
            'title'=>'Hasil Angket Scorecard'
        ]);
    }

    /**
     * show angket form
     */
    public function create()
    {
        //create custom query from kuesioner with jawaban join to provide edit method 
        $kuesioners=Kuesioner::all();
        return view('jawaban.create',[
            'idpage'=>'jawabanCreate',
            'title'=>'Isi Angket Scorecard'
        ])->with('kuesioners',$kuesioners);
    }

     /**
     * Store data jawaban with Update or create (upsert)
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
            Jawaban::upsert([
                    ['id_kuesioner'=>$arrId[$i],'jawaban'=>$arrJwb[$i],'username'=>$arrUser[$i]]
                ],[
                    'id_kuesioner','username'
                ],[
                    'jawaban'
                ]
            );
        }
   
        return view('jawaban.index',[
            'idpage'=>'jawabanIndex',
            'title'=>'Hasil Angket Scorecard'
        ]);

    }
}
