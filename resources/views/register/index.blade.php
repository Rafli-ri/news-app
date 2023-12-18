@extends('layouts.main')

@section('container')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
          
            <div class="card ">
                <div class="card-body p-5">
                    <img src="/img/register.svg" style="width: 15rem" alt="" class="img-fluid rounded d-flex mx-auto">
                    <div class="my-3">   
                        <h3 class="text-center fw-bolder fs-1 fw-bolder text-primary text-gradient">Welcome!</h3>
                        <h5 class="text-center text-black-50">create new account in your</h5>
                    </div>
                    <form action="/register" method="post">
                        {{-- untuk melindungi --}}
                        @csrf
                        {{-- name --}}
                        <div class="form-floating mb-3 text-black-50">
                            <input type="text" name="name" class="form-control border-0 @error('name') is-invalid @enderror " id="name" placeholder="Name" required value="{{ old('name') }}">
                            <label for="name">Name</label>
                            @error('name')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                        {{-- username --}}
                        <div class="form-floating mb-3 text-black-50">
                            <input type="text" name="username" class="form-control border-0 text-bl @error('username')is-invalid @enderror" id="username" placeholder="username" required value="{{ old('username') }}">
                            <label for="username">Username</label>
                            @error('username')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                        <!-- Email input -->
                        <div class="form-floating mb-3 text-black-50">
                            <input type="email" name="email" class="form-control border-0 text-bl @error('email')is-invalid @enderror" id="email" placeholder="email" required  value="{{ old('email') }}"> 
                            <label for="email">Email address</label>
                                @error('email')
                                    <div class="invalid-feedback">
                                    {{ $message }}
                                    </div>
                                @enderror
                          </div>
                      
                        <!-- Password input -->
                        <div class="form-floating mb-3 text-black-50">
                            <input type="password" name="password" id="password" class="form-control border-0 text-bl @error('password')is-invalid @enderror" placeholder="Password" required/>
                            
                            <label for="password">Password</label>
                            @error('password')
                                <div class="invalid-feedback">
                                {{ $message }}
                                </div>
                             @enderror
                           
                        </div>                                          
                        <!-- Submit button -->
                        <div class="d-grid gap-2 my-3">
                            <button type="submit" class="btn btn-primary btn-block mb-4 px-4 py-2">Register</button>
                        </div>
                        <!-- Register buttons -->
                        <div class="text-center">
                          <p>Already Registered? <a href="/login">Login</a></p>
                         
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
    
@endsection