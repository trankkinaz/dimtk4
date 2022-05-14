@extends('layouts.parent')
@section('childcontent')

    <div class="jumbotron">
        <div class="card  mb-3 ">
            <div class="card-header">
                <i class="bi bi-kanban-fill"></i>&ensp; {{ $title }}
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="verticalChart">
                    @foreach ($smyDimensi as $sj)
                        @if ($sj->id_dimensi==1)
                            <div class='col alert-secondary'>
                                <div class="singleBar">
                                    <div class="bar">                                       
                                        <div class="value">
                                            <span>{{ $sj->pila }}</span>
                                        </div>
                                    </div>
                                    <div class="title">A</div>
                                </div>
                                <div class="singleBar">
                                    <div class="bar">                                       
                                        <div class="value">
                                            <span>{{ $sj->pilb }}</span>
                                        </div>
                                    </div>
                                    <div class="title">B</div>
                                </div>
                                <div class="singleBar">
                                    <div class="bar">                                       
                                        <div class="value">
                                            <span>{{ $sj->pilc}}</span>
                                        </div>
                                    </div>
                                    <div class="title">C</div>
                                </div>              
                                <div class="singleBar">
                                    <div class="bar">                                       
                                        <div class="value">
                                            <span>{{ $sj->pild }}</span>
                                        </div>
                                    </div>
                                    <div class="title">D</div>
                                </div>                 
                                <div class="singleBar">
                                    <div class="bar">                                       
                                        <div class="value">
                                            <span>{{ $sj->pile }}</span>
                                        </div>
                                    </div>
                                    <div class="title">E</div>
                                </div>            
                            </div>
                        @elseif($sj->id_dimensi==2)
                           

                        @endif
                    
                    @endforeach
                    <div class="clearfix"></div>
                    </div>

                    
                </div>
            </div>           
        </div>     

    </div>

@endsection

    