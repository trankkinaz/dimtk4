@extends('layouts.parent')
@section('childcontent')
<div class="card text-center text-white bg-secondary mb-3  ">
    <div class="card-header">
      DIM Team Assignment-4
    </div>
    <div class="card-body">
      <h5 class="card-title">Link-C</h5>
      @auth
        <p class="card-text">  TATA KELOLA KINERJA TEKNOLOGI INFORMASI MENGGUNAKAN
          IT BALANCED SCORECARD
          <br>
          <h3>TEAM-3</h3>
        </p>
      @else
        <p class="card-text">Please Login to view additional menu.</p>
        <a href="/login" class="btn btn-primary">Login</a>
      @endauth
    </div>
</div>

@endsection