@extends('dashboard.layouts.main')

@section('container')
<div class="card mb-4">
    <h5 class="card-header">Profile Details</h5>
    <!-- Account -->
    <div class="card-body">
      <div class="d-flex align-items-start align-items-sm-center gap-4">
        <img
          src="/img/{{ auth()->user()->image_profile }}"
          alt="user-avatar"
          class="d-block rounded"
          height="100"
          width="100"
          id="uploadedAvatar"
        />
        <div class="button-wrapper">
          <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
            <span class="d-none d-sm-block">Upload new photo</span>
            <i class="bx bx-upload d-block d-sm-none"></i>
            <input
              type="file"
              id="upload"
              class="account-file-input"
              hidden
              accept="image/png, image/jpeg"
            />
          </label>
          <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
            <i class="bx bx-reset d-block d-sm-none"></i>
            <span class="d-none d-sm-block">Reset</span>
          </button>

          <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
        </div>
      </div>
    </div>
    <hr class="my-0" />
    <div class="card-body">
      <form id="formAccountSettings" method="POST" onsubmit="return false">
        <div class="row">
          <div class="mb-3 col-lg-6">
            <label class="form-label" for="fullname">Full Name</label>
            <div class="input-group input-group-merge">
              <input
                type="text"
                id="fullname"
                name="fullname"
                class="form-control"
                placeholder="Full Name"
              />
            </div>
          </div>
          <div class="mb-3 col-lg-6">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="username" />
          </div>
          <div class="mb-3 col-lg-6">
            <label for="email" class="form-label">Email</label>
            <input class="form-control" type="email" id="email" name="email" placeholder="E-Mail" />
          </div>
        </div>
        <div class="mt-2">
          <a href="" type="submit" class="btn btn-primary me-2">Save changes</a>
          <a href="/dashboard/profile" class="btn btn-outline-secondary">Cancel</a>
        </div>
      </form>
    </div>
    <!-- /Account -->
  </div>
@endsection