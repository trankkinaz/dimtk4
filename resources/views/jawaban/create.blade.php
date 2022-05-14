@extends('layouts.parent')
@section('childcontent')
    <div class="jumbotron">
        <div class="card  mb-3 overflow-auto">
            <div class="card-header">
                <i class="bi bi-toggles2"></i>&ensp;{{$title}}
            </div>
            <div class="card-body" style="overflow-y: auto;max-height: 500px; padding-top:0;">
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

                <form action="{{ route('jawaban.store') }}" method="POST">
                    @csrf
                    @php
                     $idx =0;   
                    @endphp               
                    @foreach ($kuesioners as $rs)
                        <div class="form-group">
                            <label for="id_kuesioner" class="col-form-label" style="font-style:italic; color: #00008B;">{{ $rs->id_kuesioner.'. '.$rs->pertanyaan }}</label>
                            <input type="hidden" class="form-control" id="id_kuesioner" name="id_kuesioner[]" value="{{ $rs->id_kuesioner}}">
                            <input type="hidden" class="form-control" id="username" name="username[]" value="{{ auth()->user()->username}}">      
                        </div>
                        <div class="form-check" style="padding-left: 3.0em;">
                            <input class="form-check-input" type="radio" name="jawaban[{{ $idx }}]" required id="pila" value="A" {{ $rs->jawaban=="A" ? "checked":"" }}>
                            <label class="form-check-label" for="pila">{{ $rs->pila }} </label>   
                        </div>
                        <div class="form-check" style="padding-left: 3.0em;">
                            <input class="form-check-input" type="radio" name="jawaban[{{ $idx }}]"  required id="pilb" value="B" {{ $rs->jawaban=="B" ? "checked":"" }}>
                            <label class="form-check-label" for="pilb">{{ $rs->pilb }} </label>   
                        </div>
                        <div class="form-check" style="padding-left: 3.0em;">
                            <input class="form-check-input" type="radio" name="jawaban[{{ $idx }}]"  required  id="pilc" value="C"  {{ $rs->jawaban=="C" ? "checked":"" }}>
                            <label class="form-check-label" for="pilc">{{ $rs->pilc }} </label>   
                        </div>
                        <div class="form-check" style="padding-left: 3.0em;">
                            <input class="form-check-input" type="radio" name="jawaban[{{ $idx }}]"  required id="pild" value="D"  {{ $rs->jawaban=="D" ? "checked":"" }}>
                            <label class="form-check-label" for="pild">{{ $rs->pild }} </label>   
                        </div>
                        <div class="form-check" style="padding-left: 3.0em;">
                            <input class="form-check-input" type="radio" name="jawaban[{{ $idx }}]"  required id="pile" value="E"  {{ $rs->jawaban=="E" ? "checked":"" }}>
                            <label class="form-check-label" for="pile">{{ $rs->pile }} </label>   
                        </div>
                        @php
                            $idx +=1;   
                        @endphp                      
                    @endforeach  

                    <hr>
                    <button type="submit" class="btn btn-primary">Submit</button>                    
                    
                </form>                                     
            </div>
           
        </div>     
    </div>

@endsection
