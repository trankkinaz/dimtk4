@extends('layouts.parent')
@section('childcontent')

    <div class="jumbotron">
        <div class="card  mb-3">
            <div class="card-header">
                <i class="bi bi-kanban-fill"></i>&ensp; {{ $title }}
            </div>
            <div class="card-body">
                <div class="row" style="margin-bottom: 10px;">
                    @foreach ($smyDimensi as $sj)
                    @switch($sj->id_dimensi)
                    @case(1)
                        <div class="col widget red" style="max-width: 25%;">
                        <strong><i class="bi bi-globe"></i>&ensp;CORPORATE CONTRIBUTION</strong>             
                        @break
                    @case(2)
                        <div class="col widget blue" style="max-width: 25%;">
                        <strong><i class="bi bi-magic"></i>&ensp;STAKEHOLDER ORIENTATION</strong>                        
                        @break
                    @case(3)
                        <div class="col widget yellow" style="max-width: 25%;">
                        <strong><i class="bi bi-pie-chart-fill"></i>&ensp;OPERATIONAL EXCELLENCE</strong>   
                        @break
                    @case(4)
                        <div class="col widget green" style="max-width: 25%;">
                        <strong><i class="bi bi-snow2"></i>&ensp;FUTURE ORIENTATION</strong>   
                        @break                                        
                    @endswitch
                        <hr>
                        <div class="content">
                            <div class="verticalChart">
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
                        </div>
                    </div>
                    
                            
                    @endforeach
                    <div class="clearfix"></div>             
                </div>
                <div class="row">
                    @foreach ($smyDimensi as $rs)
                    @switch($rs->id_dimensi)
                        @case(1)
                            <div class="circleStatsItemBox red" style="max-width: 25%;">
                            <div class="header">CORPORATE CONTRIBUTION</div>
                            @break
                        @case(2)
                            <div class="circleStatsItemBox blue" style="max-width: 25%;">
                            <div class="header">STAKEHOLDER ORIENTATION</div>
                            @break
                        @case(3)
                            <div class="circleStatsItemBox yellow" style="max-width: 25%;">
                            <div class="header">OPERATIONAL EXCELLENCE</div>
                            @break
                        @case(4)
                            <div class="circleStatsItemBox green" style="max-width: 25%;">
                            <div class="header">FUTURE ORIENTATION</div>
                        
                            @break
                            
                    @endswitch
                       
                            <span class="percent">percent</span>
                            <div class="circleStat">
                                <input type="text" value="{{ $rs->kpi }}" class="whiteCircle" />
                            </div>		
                            <div class="footer">
                                <span class="count">
                                    <span class="unit">Kesimpulan KPI adalah {{ $rs->kategori_kpi }}</span>								
                                </span>
                                
                            </div>
                        </div>
                    
                    @endforeach
                </div>

            </div>           
        </div>     

    </div>

@endsection

    