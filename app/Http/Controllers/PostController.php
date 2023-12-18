<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\User;

class PostController extends Controller
{
    public function index()
    {
        // Fitur Pencarian
        // $posts = Post::latest();

        // if(request('search')){
        //     $posts->where('title','like', '%' . request('search') . '%')
        //         ->orWhere('body', 'like', '%' . request('search'). '%' );
        // }
        $title = '';
        if(request('category')){
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->name;
        }
        if(request('author')){
            $author = User::firstWhere('username', request('author'));
            $title = ' by ' . $author->name;
        }

        return view('post', [
            "title" => "All Post" . $title,
            // "posts" => Post::all()
            // "posts" => Post::latest()->get()
            // "posts" => Post::latest()->filter(request(['search', 'category', 'author']))->get()
            "posts" => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(7)->withQueryString(),
            // "posts" => $posts->get()
            'categories'=> Category::all(),
        ]);
    }

    public function show(Post $post){
        return view('single_post',[
            "title" => "single Post",
            // "post" => Post::find($slug)
            "post" => $post
        ]);
    }
}
