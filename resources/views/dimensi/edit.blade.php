@extends('layouts.parent')
@section('childcontent')
    <div class="jumbotron">   
        <div class="card  mb-3 overflow-auto">
            <div class="card-header">
                <i class="bi bi-table"></i>&ensp;{{$title}}
            </div>
            <div class="card-body">
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

                <form action="{{ route('dimensi.update',$dimensi->id_dimensi) }}" method="POST">
                    @csrf
                    @method('PUT')               
                    <div class="row mb-3">
                        <label for="dimensi" class="col-sm-1 col-form-label">Dimensi</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="dimensi" name="dimensi" 
                            value="{{ $dimensi->dimensi}}"
                            placeholder="Dimensi" autofocus>
                        </div>        
                    </div>                   
                    <div class="row mb-3">
                        <label for="bobot" class="col-sm-1 col-form-label">Bobot Dimensi</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="bobot" name="bobot" 
                            value="{{ $dimensi->bobot}}" placeholder="bobot" >
                        </div>        
                    </div>
                   
                    
                    <button type="submit" class="btn btn-primary">Update Dimensi</button>
                    
                </form>                                     
            </div>
        </div>     
    </div>

@endsection
