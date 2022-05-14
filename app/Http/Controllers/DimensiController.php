<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dimensi;

class DimensiController extends Controller
{
    public function index()
    {
        $dimensis=Dimensi::all();
        return view('dimensi.index',[
            'idpage'=>'dimensiIndex',
            'title'=>'List of Dimensi'
         ])->with('dimensis',$dimensis);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dimensi.create',[
            'idpage'=>'dimensiCreate',
            'title'=>'Create new dimensi'
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
            'dimensi'=>'required|min:4',
            'bobot'=>'required'
        ]);

        Dimensi::create($request->all());
        return redirect()->route('dimensi.index')->with('success','Create Dimensi Success');

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Dimensi $dimensi)
    {
        return view('dimensi.edit',compact('dimensi'))->with([
            'title'=>'Edit Dimensi',
            'idpage'=>'dimensiedit'
        ]);
       
    }

      /**
     * Update the specified resource in storage.
     *
     */
    public function update(Request $request, Dimensi $dimensi)
    {
        $request->validate([
            'dimensi'=>'required|min:4',
            'bobot'=>'required'
        ]);
        $dimensi->update($request->all());
        return redirect()->back()->with('success','Dimensi Update Success');

    }
    

       /**
     * Remove the specified resource from storage.
     */
    public function destroy(Dimensi $dimensi)
    {
        $dimensi->delete();
        return redirect()->route('dimensi.index')->with('success','Dimensi Delete Success');
    }
}
