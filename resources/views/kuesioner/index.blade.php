@extends('layouts.parent')
@section('childcontent')

    <div class="jumbotron">
  
        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <div class="card  mb-3">              
            <div class="card-header">
                <i class="bi bi-table"></i>&ensp; {{ $title }}
            </div>
        
            <div class="card-body" style="overflow-y: auto;max-height: 500px; padding-top:0;">                    
                <table class="table table-striped table-hover table-sm table-condensed tableFixHead">
                    <thead>
                        <th>ID</th>
                        <th>Pertanyaan</th>
                        <th>ID Dimensi</th>
                        <th>Variabel</th>
                        <th>Pil. A</th>
                        <th>Pil. B</th>
                        <th>Pil. C</th>
                        <th>Pil. D</th>
                        <th>Pil. E</th>
                        <th><i class="bi bi-three-dots"></i></th>
                    </thead>
                    <tbody>
                        @foreach ($kuesioners as $rs)    
                            <tr>
                                <td>{{ $rs->id_kuesioner }}</td>
                                <td>{{ $rs->pertanyaan }}</td>
                                <td>{{ $rs->id_dimensi }}</td>
                                <td>{{ $rs->variabel }}</td>
                                <td>{{ $rs->pila }}</td>
                                <td>{{ $rs->pilb }}</td>
                                <td>{{ $rs->pilc }}</td>
                                <td>{{ $rs->pild }}</td>
                                <td>{{ $rs->pile }}</td>
                                <td style="width: 10em;">
                                    <form action="{{ route('kuesioner.destroy',$rs->id_kuesioner) }}" method="POST">                
                                        <a class="btn btn-primary btn-sm" href="{{ route('kuesioner.edit',$rs->id_kuesioner) }}">Edit</a>
                                        @csrf
                                        @method('DELETE')
                
                                        <button type="submit" class="btn btn-danger btn-sm" 
                                            onclick="return confirm('Delete this data?')">
                                            Delete
                                        </button>
                                    </form>
                                    
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>                                                   
            </div>     
            <div class="card-footer d-flex">
                {{ $kuesioners->links('pagination::bootstrap-4') }}
            </div>
                    
        </div>     

     </div>

@endsection

    