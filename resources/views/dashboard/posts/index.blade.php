@extends('dashboard.layouts.main')
{{-- @dd($posts) --}}
@section('container')

@if (session()->has('success'))
<div class="alert alert-success alert-dismissible col-lg-6" role="alert">
  <p class="text-dark">{{ session('success') }}</p>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif


{{-- <div class="alert alert-primary alert-dismissible" role="alert">
  This is a primary dismissible alert — check it out!
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div> --}}

<div class="card">
  <div class="card-header pb-0">
    <h4>Projects table</h4>
    <a href="/dashboard/posts/create" class="btn btn-primary"><span class="mb-1 tf-icons bx bx-plus"></span>&nbsp; Add New Post</a>
  </div>
  
  <div class="table-responsive text-nowrap p-4">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Title</th>
          <th>Category</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody class="table-border-bottom-0">
        @foreach ($posts as $post)     
        <tr>
          <td>
            <i class="fab fa-bootstrap fa-lg text-primary me-3"></i> <strong>{{ $loop->iteration }}</strong>
          </td>
          <td>{{ $post->title }}</td>
          <td>
            {{ $post->category->name }}
          </td>
          <td>
            <div class="dropdown">
              <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                <i class="bx bx-dots-vertical-rounded"></i>
              </button>
              <div class="dropdown-menu">
                <a class="dropdown-item mx-2" href="/dashboard/posts/{{ $post->slug }}"
                  ><i class='bx bx-info-circle me-2'></i> Detail</a
                >
                <a class="dropdown-item text-info mx-2" href="/dashboard/posts/{{ $post->slug }}/edit"
                  ><i class="bx bx-edit-alt me-2"></i> Edit</a
                >
                <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="dropdown-item">
                  @method('delete')
                  @csrf
                  <button type="submit" class="text-secondary border-0 bg-transparent text-sm badge text-danger" onclick="return confirm('Are you sure to delete?')"><i class="bx bx-trash me-2"></i>Delete</button>
               
                </form>
                {{-- <a class="dropdown-item" href="javascript:void(0);"
                  ><i class="bx bx-trash me-2"></i> Delete</a
                > --}}
              </div>
            </div>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>
@endsection