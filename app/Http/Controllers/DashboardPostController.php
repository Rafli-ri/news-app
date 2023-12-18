<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;


class DashboardPostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // return  Post::where('user_id', auth()->user()->id)->get();
        return view('dashboard.posts.index',[
            'posts' => Post::where('user_id', auth()->user()->id)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.posts.create',[
            'categories' => Category::all(),
        ]);
    }

     /**
    * Store a newly created resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    */
    public function store(Request $request)
    {
        // return $request->file('image')->store('post-images');
        // php artisan storage:link


        $validated = $request->validate([
            'title' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'category_id' => 'required',
            'image' =>'image|file|max:1024',
            'body' => 'required'
        ]);

        if($request->file('image')){
            $validated['image'] = $request->file('image')->store('post-images');
        }


        $validated['user_id'] = auth()->user()->id;
        $validated['excerpt'] = Str::limit(strip_tags($request->body), 200);
        Post::create($validated);

        // return redirect('/dashboard/posts')->with('seccess', 'New Post has been add');
        return redirect('/dashboard/posts')->with('success', 'New post has been created');
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post)
    {
        // return $post;
        return view('dashboard.posts.show',[
            'post' => $post,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post)
    {
        return view('dashboard.posts.edit',[
            'post' => $post,
            'categories' => Category::all(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Post $post)
    {
        
        $rules = [
            'title' => 'required|max:255',
            'category_id' => 'required',
            'image' =>'image|file|max:1024',
            'body' => 'required'
        ];

      

        // Validasi Slug 
        if($request->slug != $post->slug){
            $rules['slug'] = 'required|unique:posts';
        }

        $validated = $request->validate($rules);
         // cek image baru
        if($request->file('image')){
            if($request->oldImage){
                Storage::delete($request->oldImage);
            }
            $validated['image'] = $request->file('image')->store('post-images');
        }

        $validated['user_id'] = auth()->user()->id;
        $validated['excerpt'] = Str::limit(strip_tags($request->body), 200);

        Post::where('id', $post->id)->update($validated);

        // return redirect('/dashboard/posts')->with('seccess', 'New Post has been add');
        return redirect('/dashboard/posts')->with('success', 'Post has been updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {
        if($post->image){
            Storage::delete($post->image);
        }
        Post::destroy($post->id);

        // return redirect('/dashboard/posts')->with('seccess', 'New Post has been add');
        return redirect('/dashboard/posts')->with('success', 'Post has been deleted');
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(Post::class, 'slug', $request->title);
        return response()->json(['slug' => $slug]);
    }
}
