@extends('layouts.parent')
@section('childcontent')
    <div class="jumbotron">   
        <div class="card  mb-3 overflow-auto">
            <div class="card-header">
                <i class="bi bi-table"></i>&ensp;{{$title}}
            </div>
            <div class="card-body"  style="overflow-y: auto;max-height: 500px;">
                @if ($errors->any())
                <div class="alert alert-danger">
                    <strong>Alert</strong> Please Check your input.<br><br>
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif

                <form action="{{ route('kuesioner.update',$kuesioner->id_kuesioner) }}" method="POST" class="form-kuisioner">
                    @csrf
                    @method('PUT')               
                    <div class="row mb-3">
                        <label for="pertanyaan" class="col-sm-2 col-form-label">Pertanyaan</label>
                        <div class="col-sm-5">
                            <textarea rows="2" class="form-control form-text" id="pertanyaan" name="pertanyaan" placeholder="Pertanyaan" autofocus>{{ $kuesioner->pertanyaan}}</textarea>
                        </div>        
                    </div>                   
                    <div class="row mb-3">
                        <label for="id_dimensi" class="col-sm-2 col-form-label">ID Dimensi</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="id_dimensi" name="id_dimensi" 
                            value="{{ $kuesioner->id_dimensi}}" placeholder="id_dimensi">
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="variabel" class="col-sm-2 col-form-label">Variabel</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="variabel" name="variabel" 
                            value="{{ $kuesioner->variabel}}" placeholder="variabel" >
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pila" class="col-sm-2 col-form-label">Pilihan A</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pila" name="pila" placeholder="pila">{{ $kuesioner->pila}}</textarea>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pilb" class="col-sm-2 col-form-label">Pilihan B</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pilb" name="pilb" placeholder="pilb">{{ $kuesioner->pilb}}</textarea>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pilc" class="col-sm-2 col-form-label">Pilihan C</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pilc" name="pilc" placeholder="pilc">{{ $kuesioner->pilc}}</textarea>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pild" class="col-sm-2 col-form-label">Pilihan D</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pild" name="pild" placeholder="pild" >{{ $kuesioner->pild}}</textarea>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pile" class="col-sm-2 col-form-label">Pilihan E</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pile" name="pile" placeholder="pile" >{{ $kuesioner->pile}}</textarea>
                        </div>        
                    </div>                  
                                       
                    <button type="submit" class="btn btn-primary">Update Kuesioner</button>
                    
                </form>                                     
            </div>
        </div>     
    </div>

@endsection
