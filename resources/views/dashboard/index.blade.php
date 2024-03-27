@extends('dashboard.layouts.main')

@section('container')
<div class="row">
  <div class="col-3">
    <div class="card">
      <div class="card-body">
        <h3>Total Post</h3>
        <p class="fs-3">{{ $post }}</p>
      </div>
    </div>
  </div>
</div>
  <div class="container-fluid py-4">
    {{-- <p>{{ Breadcrumbs::render('dashboard') }}</p> --}}
    <h1 class="text-center">Welcome Back {{ auth()->user()->name }}</h1>
    <img src="/img/undraw_welcome_re_h3d9.svg" class="img-fluid d-flex flex-column mx-auto" style="max-height: 320px;">
  </div> 
@endsection