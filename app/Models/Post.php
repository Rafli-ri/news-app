<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User;

use Illuminate\Support\Str;

class Post extends Model
{
    use HasFactory;

    const EXCERPT_LENGTH = 130;
    
    // protected $fillable = ['excerpt'];
    protected $fillable = ['category_id','user_id','image','title','excerpt','slug','body'];
    protected $guarded = ['id'];
    // protected $hidden = [
    //     'published_at','created_at','updated_at'	
    // ];

    // protected $with = ['category', 'author'];

    public function scopeFilter($query, array $filters){

        // if(isset($filters['search']) ? $filters['search'] : false){
        //     return $query->where('title','like', '%' . request('search') . '%')
        //         ->orWhere('body', 'like', '%' . request('search'). '%' );
        // }

        // if(isset($filters['search']) ? $filters['search'] : false){
        //     return $query->where('title','like', '%' . $filters['search'] . '%')
        //         ->orWhere('body', 'like', '%' . $filters['search']. '%' );
        // }

        $query->when($filters['search'] ?? false, function($query, $search){
            return $query->where('title','like', '%' . $search . '%')
                ->orWhere('body', 'like', '%' . $search. '%' );
        });

        $query->when($filters['category']?? false, function($query, $category){
            return $query->whereHas('category', function($query) use ($category){
                $query->where('slug', $category);
            });
        });

        $query->when($filters['author']?? false, function($query, $author){
            return $query->whereHas('author', function($query) use($author){
                $query->where('username', $author);
            });
        });
    }

    public function excerpt()
    {
        return Str::limit($this->body, Post::EXCERPT_LENGTH);
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }


    public function author(){
        return $this->belongsTo(User::class, 'user_id');
    }


    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    
}

