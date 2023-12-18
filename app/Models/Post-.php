<?php

namespace App\Models;



class Post 
{
   private static $blog_post = [
    [
        "judul" => "judul Post pertama",
        "slug" => "judul-post-pertama",
        "author" => "Rafli Rifaldi",
        "body" => 'loremLorem ipsum dolor, sit amet consectetur adipisicing elit. Cupiditate architecto ex similique inventore, ratione, odit quod nihil nostrum aliquam, voluptates quos! Eveniet, provident veritatis. Cupiditate voluptates aut deserunt atque iusto?'
    ],
    [
        "judul" => "judul Post kedua",
        "slug" => "judul-post-kedua",
        "author" => "Rafli",
        "body" => 'loremLorem ipsum dolor, sit amet consectetur adipisicing elit. Cupiditate architecto ex similique inventore, ratione, odit quod nihil nostrum aliquam, voluptates quos! Eveniet, provident veritatis. Cupiditate voluptates aut deserunt atque iusto?'
    ]
];
    public static function all(){
        // return self::$blog_post;
        // collection
        return collect(self::$blog_post);
    }

    public static function find($slug){
        $posts = static::all();
        // tanpa collection menggunakan foreach
        // $post = [];
        // foreach ($posts as $p) {
        //     if($p['slug'] === $slug){
        //         $post = $p;
        //     }
        // }
        return $posts->firstWhere('slug', $slug);
    }
}
