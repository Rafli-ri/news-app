@extends('dashboard.layouts.main')

@section('container')
    <div class="row">
        <div class="col-12">
        
          @if (session()->has('success'))
          <div class="alert alert-success alert-dismissible col-lg-6" role="alert">
            <p class="text-dark">{{ session('success') }}</p>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
          @endif

            <div class="card mb-4 ">
            <div class="card-header pb-0">
              <h6>Projects table</h6>
              <a href="/dashboard/categories/create" class="btn btn-primary">Add New Category</a>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-4">
                <table class="table align-items-center justify-content-center mb-0 ">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-center text-md font-weight-bolder  opacity-7">#</th>
                      <th class="text-uppercase text-secondary text-md font-weight-bolder opacity-7">Category Name</th>
                      <th class="text-uppercase text-secondary text-md font-weight-bolder opacity-7 ps-2">Action</th>
                      <th></th>
                    </tr>
                  </thead>
                  <tbody>                  
                    @foreach ($categories as $category)
                    <tr>
                        <td>
                          <p class="text-sm text-center font-weight-bold mb-0">{{ $loop->iteration }}</p>
                        </td>
                        <td>
                          <p class="text-sm font-weight-bold mb-0">{{ $category->name }}</p>
                        </td>
                       
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item mx-2" href=""
                                ><i class='bx bx-info-circle me-2'></i> Detail</a>
                              <a class="dropdown-item text-info mx-2" href="/dashboard/categories/{{ $category->slug }}/edit"
                                ><i class="bx bx-edit-alt me-2"></i> Edit</a
                              >
                              {{-- <form action="/dashboard/categories/{{ $category->slug }}" method="post" class="dropdown-item">
                                @method('delete')
                                @csrf
                                <button type="submit" class="text-secondary border-0 bg-transparent text-sm badge text-danger" onclick="return confirm('Are you sure to delete?')"><i class="bx bx-trash me-2"></i>Delete</button>
                              </form> --}}
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
          </div>
        </div>
      </div>

    
@endsection