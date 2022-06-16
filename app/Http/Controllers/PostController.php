<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    public function index()
    {
    	//$posts = Post::get(); // returns all post
        $posts = Post::latest()->with(['user', 'likes'])->paginate(20); // return in two
        //orderBy('created-at', 'desc') used to arrange in order
    	return view('posts.index', [
    		'posts'=> $posts
    	]);
    }

    public function store(Request $request)
    {
    	$this->validate($request, [
    		'body' => 'required'
    	]);

    	//auth()->user()->posts()->create();
    	$request->user()->posts()->create([
    		'body' => $request->body
    	]);
    	return back();
    }
    public function destroy(Post $post)
    {
       /* if(!$post->ownedBy(auth()->user())){

        }*/
        $this->authorize('delete', $post);
        $post->delete();
        return back();
    }
    public function show(Post $post)
    {
        return view('posts.show', [
            'post' => $post,
        ]);
    }
}
