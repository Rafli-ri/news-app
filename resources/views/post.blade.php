@extends('layouts.main')

@section('container')
    <div>
        <h3 class="my-3 text-center">{{ $title }}</h3>
        {{-- <p>{{ $title }}</p> --}}
        
        <div class="row justify-content-center">
            <div class="col-md">
                <form action="/post">
                    @if (request('category'))
                        <input type="hidden" name="category" value="{{ request('category') }}">
                    @endif
                    @if (request('author'))
                        <input type="hidden" name="author" value="{{ request('author') }}">
                    @endif
                    <div class="input-group mb-3 mx-auto">
                        <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
                        <button class="btn btn-primary" type="submit" id="button-addon2">Search</button>
                      </div>
                </form>
            </div>
        </div>


        @if ($posts->count())        
            <div class="card mb-5">
                @if ($posts[0]->image)
                <div class="img-fluid" style="object-fit: cover;">
                    <img src="{{ asset('storage/' . $posts[0]->image) }}" class="card-img-top" height="400" alt="" style="object-fit: cover;" alt="...">
                </div>
                @else
                <img src="https://source.unsplash.com/1200x400/?{{ $posts[0]->category->name }}" class="card-img-top" alt="...">
                @endif
                
                <div class="card-body">
                    <a class="mt-2" href="post/{{ $posts[0]->slug }}">
                        <h5 class="card-title">{{ $posts[0]->title }}</h5>
                    </a>
                    <p>
                        by 
                        <a class="text-decoration-none" href="?author={{ $posts[0]->author->username }}">{{ $posts[0]->author->name }}</a> 
                        in 
                        {{-- <a href="/categories/{{ $posts[0]->category->slug }}">{{ $posts[0]->category->name }}</a> --}}
                        <a class="text-decoration-none" href="?category={{ $posts[0]->category->slug }}">{{ $posts[0]->category->name }}</a>
                    </p>
                    <p class="card-text">{{ $posts[0]->excerpt }}</p>
                    <p class="card-text"><small class="text-muted">{{ $posts[0]->created_at->diffForHumans() }}</small></p>
                </div>
            </div>
        
            
            <div class="row">
            <div class="col-md-8">
                <h4 class="text-bolder d-none d-md-block">Latest Blog </h4>
                @foreach ($posts->skip(1) as $post)
                <div class="card mb-4 rounded-3 border-0 card-post">
                    <div class="row g-0">
                        <div class="col-lg-4 p-3 rounded-2">
                            @if ($post->image)
                                <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid rounded" alt="...">
                            @else
                                <img src="https://source.unsplash.com/980x720/?{{ $post->category->name }}" class="img-fluid rounded" alt="...">
                            @endif
                        </div>
                        <div class="col-lg-8 lh-sm">
                            <div class="card-body">
                                <a href="?category={{ $post->category->slug }}" class="btn fw-bold blog-topic" style="font-size: 12px">{{ $post->category->name }}</a>
                                <a href="/post/{{ $post->slug }}" class=" p-0 m-0">
                                    <h5 class="card-title mt-2">{{ $post->title }}</h5>
                                </a>
                                <p class="card-text text-black-50 p-0 m-0">{!! $post->excerpt() !!}</p>
                                <a href="?author={{ $post->author->username }}">{{ $post->author->name }}</a>
                                <p class="card-text"><small class="text-muted">{{ $post->created_at->diffForHumans() }}</small></p>
                            </div>
                        </div>
                    </div>
                    
                </div>
                @endforeach

               
                {{-- @foreach ($posts->skip(1) as $post)
                <div class="row">
                    <div class="col-md">
                      <div class="card mb-3 border-0">
                        <div class="row g-0">
                          <div class="col-md-4">
                            @if ($post->image)
                                <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid rounded-start" alt="...">
                            @else
                                <img src="https://source.unsplash.com/980x720/?{{ $post->category->name }}" class="img-fluid rounded-start" alt="...">
                            @endif
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                            <a href="/post?category={{ $post->category->slug }}" class="btn fw-bold blog-topic" style="font-size: 12px">{{ $post->category->name }}</a>
                              <h5 class="card-title">{{ $post->title }}</h5>
                              <p class="card-text text-black-50">
                                 {!! $post->excerpt() !!}
                              </p>
                              <p class="card-text"><small class="text-muted">{{ $post->created_at->diffForHumans() }}</small></p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                </div>
                @endforeach --}}
            </div>
            <div class="col-md d-none d-md-block">
                <h4 class="text-bolder text-center">Topics </h4>
                @foreach ($categories->slice(0,4) as $category)
                  <div class="list-group my-2 bg-white">
                    <a href="?category={{ $category["slug"] }}" class="list-group-item list-group-item-action">
                        <div class="row gy-0">
                            <div class="col-sm-2">
                                {{-- <img src="..." class="img-fluid rounded-start" alt="..."> --}}
                                <div class="bg-secondary fs-3 text-center text-white"><i class="{{ $category->icon }}"></i></div>
                            </div>
                            <div class="col-sm-8 ">
                                <div class="card-body p-0 mt-2">
                                    <h5 class="mb-1 card-title">{{ $category["name"] }}</h5>
                                </div>
                            </div>
                        </div>
                      {{-- <p class="mb-1">{{ $category->title }}</p> --}}
                    </a>
                </div>
                @endforeach
            </div>
        </div>
    </>
@else
        <p class="text-center fs-4">No post Found</p>
@endif

{{-- Pagination --}}

{{ $posts->links() }}


@endsection