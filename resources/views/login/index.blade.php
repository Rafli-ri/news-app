@extends('layouts.main')

@section('container')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-5 mb-5">
          {{-- Register sukses --}}
            @if (session()->has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{ session('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>   
            @endif

            {{-- Authentikasi gagal --}}
            @if (session()->has('loginError'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                {{ session('loginError') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>   
            @endif
         
            <div class="card">
                <div class="card-body p-5">
                  <img src="/img/login.svg" alt="" class="img-fluid rounded d-flex mx-auto" width="250px">
                   <div class="text-center my-3 text-black-50">
                    <h3 class="fw-bolder text-primary text-gradient">Welcome Back</h3>
                    <h6>Enter your email and password to Login</h6>
                   </div>
                    <form action="/login" method="post">
                        @csrf
                        <!-- Email input -->
                        <div class="form-floating mb-3 text-black-50">
                          <input type="email" name="email" class="form-control border-0 @error('email') is-invalid @enderror" id="email" placeholder="email" autofocus required value="{{ old('email') }}">
                          <label for="email">Email address</label>
                          @error('email')
                            <div class="invalid-feedback">
                              {{ $message }}
                            </div>
                          @enderror
                        </div>
                    
                      <!-- Password input -->
                      <div class="form-floating mb-4 text-black-50">
                          <input type="password" name="password" id="password" class="form-control border-0" placeholder="Password" required/>
                          <label  for="password">Password</label>
                      </div>
                      <div class="mb-4">
                        <a href="" class="text-primary">Forgot Password?</a>
                      </div>
                        <!-- Submit button -->
                        <div class="d-grid gap-2">
                          <button type="submit" class="btn btn-primary bg-primary mb-4 fs-5 text-uppercase">Login</button>
                        </div>
                        
                      
                        <!-- Register buttons -->
                        <div class="text-center">
                          <p>Not a member? <a href="/register">Register</a></p>
                         
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
    
@endsection