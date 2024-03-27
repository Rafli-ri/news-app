<?php

use App\Http\Controllers\AdminCategoryController;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DashboardPostController;
use App\Http\Controllers\DashboardProfileController;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/', function () {
//     return view('home',[
//         'title' => 'home',
//         'users' => User::all(),
//     ]);
// });

// Route::get('/post', function () {

//     // return view('post', [
//     //     "title" => "post",
//     //     "posts" => Post::all()
//     // ]);
// });

Route::get('/',[PostController::class, 'index'] );

// Route::get('post/{slug}', function ($slug) {
//     // return view('single_post',[
//     //     "title" => "single Post",
//     //     "post" => Post::find($slug)
//     // ]);
// });

Route::get('post/{post:slug}', [PostController::class, 'show']);



Route::get('/categories', function(){
    return view('categories',[
        'title' => 'category',
        'categories'=> Category::all(),
    ]);
});


// Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');


Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);


Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');


Route::post('/register', [RegisterController::class, 'store']);

// Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('auth');
Route::get('/dashboard', function(){
    return view('dashboard.index', [
        'post' => Post::count()
    ]);
})->middleware('auth');



Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');


// membuat slug otomatis
Route::get('/dashboard/categories/checkSlug', [AdminCategoryController::class, 'checkSlug'])->middleware('auth');

Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');

Route::resource('/dashboard/profile', DashboardProfileController::class)->middleware('auth');
// Route::any('/*', function(){
//     return view('not_found');
// });
// Route::get('/dashboard/profile', function(){
//     return view('dashboard.profile.index',[
//         "user" => User::all()
//     ]);
// })->middleware('auth');

// Route::get('/dashboard/posts/checkSlug', function(){
//      $post = Post::create([
//         'title' => 'My Awesome Blog Post',
//     ]);
//     dd($post->slug);
// });

// Route::get('categories/{category:slug}' , function(Category $category){
//     return view('post',[
//         'title' => "Post By Category :$category->name",
//         'posts' => $category->posts->load('category', 'author'),
//     ]);
// });

// Route::get('/authors/{author:username}', function(User $author){
//     return view('post',[
//         'title' => "Post By Author : $author->name",
//         // lazzy eager
//         'posts' => $author->posts->load('category','author'),
   
//     ]);
// });
