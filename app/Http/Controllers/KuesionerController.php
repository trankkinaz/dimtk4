<?php

namespace App\Http\Controllers;

use App\Models\Kuesioner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class KuesionerController extends Controller
{
    public function index()
    {
        $kuesioners=Kuesioner::paginate(5);
        return view('kuesioner.index',[
            'idpage'=>'kuesionerIndex',
            'title'=>'List of Kuesioner'
         ])->with('kuesioners',$kuesioners);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kuesioner.create',[
            'idpage'=>'kuesionerCreate',
            'title'=>'Create new kuesioner'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'pertanyaan'=>'required|min:4',
            'id_dimensi'=>'required'
        ]);
        Kuesioner::create($request->all());
        return redirect()->route('kuesioner.index')->with('success','Create Kuesioner Success');

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Kuesioner $kuesioner)
    {
        return view('kuesioner.edit',compact('kuesioner'))->with([
            'title'=>'Edit Kuesioner',
            'idpage'=>'kuesioneredit'
        ]);
       
    }

      /**
     * Update the specified resource in storage.
     *
     */
    public function update(Request $request, Kuesioner $kuesioner)
    {
        $request->validate([
            'pertanyaan'=>'required|min:4',
            'id_dimensi'=>'required'
        ]);
        $kuesioner->update($request->all());
        return redirect()->back()->with('success','Kuesioner Update Success');

    }
    

       /**
     * Remove the specified resource from storage.
     */
    public function destroy(Kuesioner $kuesioner)
    {
        $kuesioner->delete();
        return redirect()->route('kuesioner.index')->with('success','Kuesioner Delete Success');
    }
}
