@extends('layouts.main')

@section('container')
    <div class="card mb-5">
        @if ($post->image)
            <div class="img-fluid">
                <img src="{{ asset('storage/'.$post->image) }}" class="card-img-top" height="400" alt=""  style="object-fit: cover;">
            </div>
        @else
            <img src="https://source.unsplash.com/1200x400/?{{ $post->category->name }}" class="card-img-top" alt="...">
        @endif
        {{-- <img src="https://source.unsplash.com/1200x400/?{{ $post->category->name }}" class="card-img-top" alt="..."> --}}
        <div class="card-body px-5">
            <h2 class="my-3">{{ $post["title"] }}</h2>
            {{-- <p>by Rafli in {{ $post->category->name }}</p> --}}
                <p class="text-black-50">
                    by 
                    <a class="text-black-50" href="?author={{ $post->author->username }}">{{ $post->author->name }}</a> 
                    in 
                    <a class="text-black-50" href="?category={{ $post->category->slug }}">{{ $post->category->name }}</a> 
                </p>
            <p class="badge bg-success text-white">{{ $post->category->created_at->format('D, Y-m-d ') }}</p>
            {{-- {{ $post["body"] }} --}}
            <p>{!! $post["body"] !!}</p>
            <a class="btn btn-dark" href="/">Back to blog</a>
        </div>
    </div>
@endsection
