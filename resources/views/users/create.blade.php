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

                <form action="{{ route('users.store') }}" method="POST">
                    @csrf                   
                    <div class="row mb-3">
                        <label for="username" class="col-sm-1 col-form-label">Username</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="username" name="username" placeholder="Username" autofocus required>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="email" class="col-sm-1 col-form-label">Email</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="password" class="col-sm-1 col-form-label">Password</label>
                        <div class="col-sm-5">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="hak_akses" class="col-sm-1 col-form-label">Hak Akses</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="hak_akses" name="hak_akses" placeholder="Hak Akses" required>
                        </div>        
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Add User</button>
                    
                </form>                                     
            </div>
        </div>     
    </div>

@endsection
