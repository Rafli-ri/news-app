@extends('dashboard.layouts.main')

@section('container')
{{-- @dd($user) --}}
@if (session()->has('success'))
<div class="alert alert-success alert-dismissible col-lg-6" role="alert">
  <p class="text-dark">{{ session('success') }}</p>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif
<div class="row">
  <div class="col-lg-4">
    @foreach ($users as $user)
      {{-- {{ $user->email }} --}}
      <div class="card" >
        <img src="/img/{{ $user->image_profile}}" class="card-img-top" alt="...">
        <div class="card-body text-center">
          <h5 class="card-title">{{ $user->name }}</h5>
          <h5 class="card-subtitle">{{ $user->username }}</h5>
          <p class="card-text">{{ $user->email }}</p>
          {{-- <a href="#" class="card-link">Another link</a> --}}
          <a href="/dashboard/profile/{{ $user->username }}/edit" class="btn btn-primary mt-3">Edit Profile</a>
        </div>
    </div>

  </div>
  <div class="col-lg my-2">
    <div class="card p-3">
        <ul class="list-group list-group-flush">
          <li class="list-group-item">
            <h5>Full Name</h5>
            <p>{{ $user->name }}</p>
          </li>
          <li class="list-group-item">
            <h5>Email</h5>
            <p>{{ $user->email }}</p>
          </li>
          <li class="list-group-item">
            <h5>Username</h5>
            <p>{{ $user->username }}</p>
          </li>
        </ul>
    </div>
  </div>
  @endforeach
</div>

@endsection