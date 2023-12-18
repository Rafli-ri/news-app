@extends('dashboard.layouts.main')

@section('container')
{{-- @dd($user) --}}
<div class="row">
  <div class="col-8">
    <div class="card mb-4">     
      <div class="card-header pb-0 mb-4">
          <h3>Edit Post</h3>
      </div>
      <div class="card-body px-4 pt-0 pb-2">
          <form method="post" action="/dashboard/Profile/{{ $user->username }}" enctype="multipart/form-data">
              @method('put')
              @csrf
              <div class="mb-3">
                  <label for="name" class="form-label fs-6">Full Name</label>
                  <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" id="name" aria-describedby="emailHelp" required autofocus value="{{ old('name', $user->name) }}">
                  @error('name')
                      <div class="invalid-feedback">
                          {{ $message }}
                      </div>
                  @enderror
              
              </div>
              <div class="mb-3">
                  <label for="username" class="form-label fs-6">Username</label>
                  <input type="text" class="form-control @error('username') is-invalid @enderror" name="username" id="username" aria-describedby="emailHelp" required value="{{ old('username', $user->username) }}">
                  @error('username')
                      <div class="invalid-feedback">
                          {{ $message }}
                      </div>
                  @enderror
              </div>

              <button type="submit" class="btn btn-primary my-3">Update</button>
              <a href="/dashboard/profile/" class="btn btn-secondary my-3">Cencel</a>
          </form>
      </div>
    </div>
  </div>
</div>
@endsection