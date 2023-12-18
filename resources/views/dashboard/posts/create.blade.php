@extends('dashboard.layouts.main')

@section('container')
<div class="row">
    <div class="col-8">

      <div class="card mb-4">
        <div class="card-header pb-0 mb-4">
            <h3>Create New Post</h3>
        </div>
        <div class="card-body px-4 pt-0 pb-2">
            <form method="post" action="/dashboard/posts" enctype="multipart/form-data">
                @csrf
                <div class="mb-3">
                    <label for="title" class="form-label fs-6">Title</label>
                    <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" id="title" aria-describedby="emailHelp" required autofocus value="{{ old('title') }}">
                    @error('title')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                
                </div>
                <div class="mb-3">
                    <label for="slug" class="form-label fs-6">Slug</label>
                    <input type="text" class="form-control @error('slug') is-invalid @enderror" name="slug" id="slug" aria-describedby="emailHelp" required value="{{ old('slug') }}">
                    @error('slug')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="category" class="form-label @error('category') is-invalid @enderror fs-6">Category</label>
                    <select class="form-select form-select-lg mb-3" name="category_id" aria-label="form-select-lg example" required>
                        <option selected disabled="disabled" class="fst-italic dropdown-divider">--Select Category--</option>
                        <hr class="dropdown-divider">
                        @foreach ($categories as $category)
                            @if (old('category_id') == $category->id)
                                <option value="{{ $category->id }}" selected>{{ $category->name }}</option>
                            @else
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                            @endif
                        @endforeach

                    </select>
                  
                </div>
                <div class="mb-3">
                    <label for="image" class="form-label">Image</label>
                    <img src="" alt="" class="img-preview img-fluid">
                    <input class="form-control @error('image') is-invalid @enderror" name="image" type="file" id="image" onchange="previewImage()">
                    @error('image')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="body" class="form-label fs-6">Body</label>
                    @error('body')
                        <p class="text-danger">{{ $message }}</p>
                    @enderror
                    <input id="body" type="hidden" name="body" value="{{ old('body') }}" required>
                    <trix-editor input="body"></trix-editor>
                </div>
                <button type="submit" class="btn btn-primary my-3">Submit</button>
                <a href="/dashboard/posts" class="btn btn-secondary">Cancle</a>
              </form>
        </div>
      </div>
    </div>
</div>
<script>

    const title = document.querySelector('#title');
    const slug = document.querySelector('#slug');

    title.addEventListener('change', function(){
        fetch('/dashboard/posts/checkSlug?title=' + title.value)
        .then(response => response.json())
        .then(data => slug.value = data.slug)
    });

    document.addEventListener('trix-file-accept', function(e){
        e.preventDefault();
    })

function previewImage(){
    const image = document.querySelector('#image');
    const imgPreview = document.querySelector('.img-preview')

    imgPreview.style.display = 'block';

    const oFReader = new FileReader();
    oFReader.readAsDataURL(image.files[0]);

    oFReader.onload = function(oFREvent){
        imgPreview.src = oFREvent.target.result;
    }
}

</script>
@endsection