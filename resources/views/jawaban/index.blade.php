@extends('layouts.parent')
@section('childcontent')

    <div class="jumbotron">

        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <div class="card  mb-3 ">
            <div class="card-header">
                <i class="bi bi-kanban-fill"></i>&ensp; {{ $title }}
            </div>
            <div class="card-body">
                <h5>hasil angket disini </h5>
            </div>           
        </div>     

    </div>

@endsection

    