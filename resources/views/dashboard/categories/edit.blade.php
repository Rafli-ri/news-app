@extends('dashboard.layouts.main')

@section('container')
<div class="row">
    <div class="col-8">
      <div class="card mb-4">     
        <div class="card-header pb-0 mb-4">
            <h3>Edit Category</h3>
        </div>
        <div class="card-body px-4 pt-0 pb-2">
            <form method="post" action="/dashboard/categories/{{ $category->slug }}">
                @method('put')
                @csrf
                <div class="mb-3">
                    <label for="name" class="form-label fs-6">Category Name</label>
                    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" id="name" aria-describedby="emailHelp" required autofocus value="{{ old('name', $category->name) }}">
                    @error('name')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                
                </div>
                <div class="mb-3">
                    <label for="slug" class="form-label fs-6">Slug</label>
                    <input type="text" class="form-control @error('slug') is-invalid @enderror" name="slug" id="slug" aria-describedby="emailHelp" required value="{{ old('slug', $category->slug) }}">
                    @error('slug')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                
                <button type="submit" class="btn btn-info my-3">Update</button>
                <a href="/dashboard/categories" class="btn btn-danger my-3">Cencel</a>
              </form>
        </div>
      </div>
    </div>
</div>
<script>

    const name = document.querySelector('#name');
    const slug = document.querySelector('#slug');

    name.addEventListener('change', function(){
        fetch('/dashboard/categories/checkSlug?name=' + name.value)
        .then(response => response.json())
        .then(data => slug.value = data.slug)
    });


</script>
@endsection