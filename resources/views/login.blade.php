@extends('layouts.parent')
@section('childcontent')
<div class="row justify-content-center">
    <div class="col-md-4">      
        <center>
            <h1><i class="bi bi-person-circle"></i></h1>
            <h1 class="h3 mb-3 fw-normal">User Login</h1>
        </center>
        @if(session()->has('loginError'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                {{ session('loginError') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
         
        <div class="form-signin">
            <form method="post" action="/login">
                @csrf         
              <div class="form-floating">
                <input type="username" class="form-control @error('username') is-invalid @enderror" 
                    id="username" name="username" 
                    placeholder="username" autofocus required
                    value="{{ old('username') }}">
                <label for="username">Username</label>
                @error('username')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
              
              </div>
              <div class="form-floating">
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" autofocus required>
                <label for="password">Password</label>
              </div>
          
              <div class="checkbox mb-3">
              </div>
              <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
            </form>
        </div>
    </div>
</div>
@endsection
