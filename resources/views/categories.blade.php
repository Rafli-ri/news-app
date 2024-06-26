@extends('layouts.main')

@section('container')
    <h1>{{ $title }}</h1>
  
    @foreach ($categories as $category)
    <div class="list-group bg-white my-2">
        <a href="/post?category={{ $category["slug"] }}" class="list-group-item list-group-item-action">
          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">{{ $category["name"] }}</h5>
            <small class="text-muted">{{ $category->created_at }}</small>
          </div>
          <p class="mb-1">{{ $category->title }}</p>
          <small class="text-muted">And some muted small print.</small>
        </a>
    </div>  
    @endforeach
@endsection