<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(3)->create();
        Post::factory(20)->create();
        User::create([
            'name'=> "Rafli Rifaldi",
            'username' => 'rafliRifaldi',
            'email' => 'rafli@gmail.com',
            'password' =>bcrypt('12345')
        ]);


        // User::create([
        //     'name'=> "RCimil",
        //     'email' => 'rcimil@gmail.com',
        //     'password' =>bcrypt('12345')
        // ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal',
        ]);
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming',
        ]);
        Category::create([
            'name' => 'UI UX Design',
            'slug' => 'uiux-design',
        ]);

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam.',
        //     'body' => ' <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam, blanditiis, perferendis ipsa quaerat sapiente voluptas! Consequuntur ad doloremque omnis aperiam sed neque asperiores eligendi illum molestias, optio quisquam in ratione debitis commodi et,</p> <p> quos rerum maxime eius alias voluptas quo! Odit ratione assumenda laborum facere omnis recusandae perferendis amet possimus qui! Minima alias dolor libero recusandae consequuntur. Eaque similique repellendus, voluptates ratione sapiente cumque alias consectetur beatae dicta doloribus?</p> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam, blanditiis, perferendis ipsa quaerat sapiente voluptas! Consequuntur ad doloremque omnis aperiam sed neque asperiores eligendi illum molestias, optio quisquam in</p><p> ratione debitis commodi et,</p> <p> quos rerum maxime eius alias voluptas quo! Odit ratione assumenda laborum facere omnis recusandae perferendis amet possimus qui! Minima alias dolor libero recusandae consequuntur. Eaque similique repellendus, voluptates ratione sapiente cumque alias consectetur beatae dicta doloribus?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam.',
        //     'body' => ' <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam, blanditiis, perferendis ipsa quaerat sapiente voluptas! Consequuntur ad doloremque omnis aperiam sed neque asperiores eligendi illum molestias, optio quisquam in ratione debitis commodi et,</p> <p> quos rerum maxime eius alias voluptas quo! Odit ratione assumenda laborum facere omnis recusandae perferendis amet possimus qui! Minima alias dolor libero recusandae consequuntur. Eaque similique repellendus, voluptates ratione sapiente cumque alias consectetur beatae dicta doloribus?</p> ',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul ketiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam.',
        //     'body' => ' <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam, blanditiis, perferendis ipsa quaerat sapiente voluptas! Consequuntur ad doloremque omnis aperiam sed neque asperiores eligendi illum molestias, optio quisquam in ratione debitis commodi et,</p> <p> quos rerum maxime eius alias voluptas quo! Odit ratione assumenda laborum facere omnis recusandae perferendis amet possimus qui! Minima alias dolor libero recusandae consequuntur. Eaque similique repellendus, voluptates ratione sapiente cumque alias consectetur beatae dicta doloribus?</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam.',
        //     'body' => ' <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam, blanditiis, perferendis ipsa quaerat sapiente voluptas! Consequuntur ad doloremque omnis aperiam sed neque asperiores eligendi illum molestias, optio quisquam in ratione debitis commodi et,</p> <p> quos rerum maxime eius alias voluptas quo! Odit ratione assumenda laborum facere omnis recusandae perferendis amet possimus qui! Minima alias dolor libero recusandae consequuntur. Eaque similique repellendus, voluptates ratione sapiente cumque alias consectetur beatae dicta doloribus?</p>
        //      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam, blanditiis, perferendis ipsa quaerat sapiente voluptas! Consequuntur ad doloremque omnis aperiam sed neque asperiores eligendi illum molestias, optio quisquam in ratione debitis commodi et,</p> <p> quos rerum maxime eius alias voluptas quo! Odit ratione assumenda laborum facere omnis recusandae perferendis amet possimus qui! Minima alias dolor libero recusandae consequuntur. Eaque similique repellendus, voluptates ratione sapiente cumque alias consectetur beatae dicta doloribus?</p>
        //      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam, blanditiis, perferendis ipsa quaerat sapiente voluptas! Consequuntur ad doloremque omnis aperiam sed neque asperiores eligendi illum molestias, optio quisquam in ratione debitis commodi et,</p>  quos rerum maxime eius alias voluptas quo! Odit ratione assumenda laborum facere omnis recusandae perferendis amet possimus qui! Minima alias dolor libero recusandae consequuntur. Eaque similique repellendus, voluptates ratione sapiente cumque alias consectetur beatae dicta doloribus?
        //      Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur explicabo molestias repellendus hic cupiditate doloribus impedit, exercitationem quasi itaque veniam, blanditiis, perferendis ipsa quaerat sapiente voluptas! Consequuntur ad doloremque omnis aperiam sed neque asperiores eligendi illum molestias, optio quisquam in ratione debitis commodi et, <p> quos rerum maxime eius alias voluptas quo! Odit ratione assumenda laborum facere omnis recusandae perferendis amet possimus qui! Minima alias dolor libero recusandae consequuntur. Eaque similique repellendus, voluptates ratione sapiente cumque alias consectetur beatae dicta doloribus?</p>',
        //     'category_id' => 1,
        //     'user_id' => 2
        // ]);

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
