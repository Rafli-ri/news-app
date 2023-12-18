<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Post;
use Illuminate\Http\Request;

class DashboardProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.profile.index',[
            // "users" => User::all(),
            "users" => User::where('id', auth()->user()->id)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.profile.create',[
            'users' => User::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $user)
    {
        // dd($user);
        return view('dashboard.profile.edit',[
            'user' => $user,
            'posts' => Post::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $user)
    {
        $rules = [
            'image_profile' => 'file|max:1024',
            'name' => 'required|max:255'
        ];

        if($request->username != $user->username){
            $rules['username'] = 'required|unique:user';
        }
        $validated['id'] = auth()->user()->id;

        // $validated = $request->validate($rules);
        User::where('id', $user->id)->update($validated);
        return redirect('/dashboard/profile')->with('success', 'Profile has been updated');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        //
    }
}
