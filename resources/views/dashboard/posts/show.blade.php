@extends('dashboard.layouts.main')

@section('container')
<div class="card my-2">
    @if ($post->image)
        
            <img src="{{ asset('storage/'.$post->image) }}" alt="">
        
        @else
             <img src="https://source.unsplash.com/1200x400/?{{ $post->category->name }}" class="card-img-top" alt="...">
    @endif
    <div class="card-body">
        <h2 class="">{{ $post["title"] }}</h2>
        {{-- <p>by Rafli in {{ $post->category->name }}</p> --}}

            {{-- <p class="text-black-50">by <a class="text-black-50" href="/post?author={{ $post->author->username }}">{{ $post->author->name }}</a> in <a class="text-black-50" href="/post?category={{ $post->category->slug }}">{{ $post->category->name }}</a> </p> --}}
  
        <p class="badge bg-success text-white">{{ $post->category->created_at->format('D, Y-m-d ') }}</p>
        {{-- {{ $post["body"] }} --}}
        <p>{!! $post["body"] !!}</p>
        <a class=" btn btn-secondary" href="/dashboard/posts"><i class='bx bx-arrow-back'></i>&nbsp; Back to dashboard</a>
    </div>
</div>
@endsection