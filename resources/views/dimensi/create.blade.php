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

                <form action="{{ route('dimensi.store') }}" method="POST">
                    @csrf                   
                    <div class="row mb-3">
                        <label for="dimensi" class="col-sm-1 col-form-label">Dimensi</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="dimensi" name="dimensi" placeholder="Dimensi" autofocus required>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="bobot" class="col-sm-1 col-form-label">Bobot Dimensi</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="bobot" name="bobot" placeholder="Bobot" required>
                        </div>        
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Add Dimensi</button>
                    
                </form>                                     
            </div>
        </div>     
    </div>

@endsection
