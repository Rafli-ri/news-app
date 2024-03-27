<nav class="navbar navbar-expand-lg bg-navbar-theme shadow-sm p-3 mb-5 bg-body rounded">
  {{-- layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme --}}
  <div class="container-xxl">
    <a class="navbar-brand mb-0 h1 fs-4" href="#">BlogApp | </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 fs-5 ">
        <li class="nav-item">
          <a class="nav-link {{ Request::is('/*') ? "text-primary" : "" }}" aria-current="page" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('categories*') ? "text-primary" : "" }}" aria-current="page" href="/categories">Categories</a>
        </li>
        
      </ul>
      @auth
        <div class="dropdown">
          Welcome Back
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            {{ auth()->user()->name }}
          </button>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/dashboard">Dashboard</a></li>
            <li><hr class="dropdown-divider"></li>
            <li>
              <form action="/logout" method="post">
                @csrf
                <button class="dropdown-item" type="submit">Logout</button>
              </form>
            
            </li>
          </ul>
        </li>
      </div>
      @else
      <div class="d-flex">
        <div class="me-2">
          <a href="/login" class="btn btn-primary text-bold" >Login</a>
        </div>
        <div class="">
          <a href="/register" class="btn btn-outline-primary text-bold">Register</a>
        </div>
      </div>
      @endauth
    </div>
  </div>
</nav>