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
                @if ($message = Session::get('success'))
                <div class="alert alert-success">
                    <p>{{ $message }}</p>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                 @endif

                <form action="{{ route('users.update',$user->id) }}" method="POST">
                    @csrf
                    @method('PUT')               
                    <div class="row mb-3">
                        <label for="username" class="col-sm-1 col-form-label">Username</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="username" name="username" 
                            value="{{ $user->username}}"
                            placeholder="Username" autofocus required>
                        </div>        
                    </div>
                    <div class="row mb-3">
                        <label for="email" class="col-sm-1 col-form-label">Email</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="email" name="email" 
                            value="{{ $user->email}}" placeholder="Email" required>
                        </div>        
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Update Profile</button>
                    
                </form>                                     
            </div>
        </div>     
    </div>

@endsection
