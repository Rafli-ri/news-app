@extends('dashboard.layouts.main')

@section('container')
  <div class="container-fluid py-4">
    {{-- <p>{{ Breadcrumbs::render('dashboard') }}</p> --}}
    <h1 class="text-center">Welcome Back, {{ auth()->user()->name }}</h1>
    <img src="/img/undraw_welcome_re_h3d9.svg" class="img-fluid d-flex flex-column mx-auto" style="max-height: 350px;">
  
  </div> 
@endsection