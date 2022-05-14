@extends('layouts.parent')
@section('childcontent')
    <div class="jumbotron">
        <div class="card  mb-3 overflow-auto">
            <div class="card-header">
                <i class="bi bi-table"></i>&ensp;{{$title}}
            </div>
            <div class="card-body" style="overflow-y: auto;max-height: 500px;>
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

                <form action="{{ route('kuesioner.store') }}" method="POST" class="form-kuesioner">
                    @csrf                   
                    <div class="row mb-3">
                        <label for="pertanyaan" class="col-sm-2 col-form-label">Pertanyaan</label>
                        <div class="col-sm-5">
                            <textarea rows="2" class="form-control form-text" id="pertanyaan" name="pertanyaan" placeholder="Pertanyaan" autofocus></textarea>
                        </div>        
                    </div>                   
                    <div class="row mb-3">
                        <label for="id_dimensi" class="col-sm-2 col-form-label">ID Dimensi</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="id_dimensi" name="id_dimensi" 
                            value="" placeholder="id_dimensi">
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="variabel" class="col-sm-2 col-form-label">Variabel</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="variabel" name="variabel" 
                            value="" placeholder="variabel" >
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pila" class="col-sm-2 col-form-label">Pilihan A</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pila" name="pila" placeholder="pila"></textarea>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pilb" class="col-sm-2 col-form-label">Pilihan B</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pilb" name="pilb" placeholder="pilb"></textarea>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pilc" class="col-sm-2 col-form-label">Pilihan C</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pilc" name="pilc" placeholder="pilc"></textarea>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pild" class="col-sm-2 col-form-label">Pilihan D</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pild" name="pild" placeholder="pild" ></textarea>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="pile" class="col-sm-2 col-form-label">Pilihan E</label>
                        <div class="col-sm-5">
                            <textarea type="text" class="form-control" id="pile" name="pile" placeholder="pile" ></textarea>
                        </div>        
                    </div>          
                    <button type="submit" class="btn btn-primary">Add Pertanyaan</button>
                    
                </form>                                     
            </div>
        </div>     
    </div>

@endsection
