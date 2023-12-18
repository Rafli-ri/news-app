@extends('layouts.main')

@section('container')
    <h2>Category Page : {{ $category }}</h2>
    {{-- <p>{{ $title }}</p> --}}
    @foreach ($posts as $post)
    <div class="card my-4">
        <div class="card-body">
            <a class="text-dark" href="post/{{ $post["slug"] }}"><h3>{{ $post["title"] }}</h3></a>
            <p>{{ $post["excerpt"] }}</p>
        </div>
    </div>
    @endforeach
@endsection