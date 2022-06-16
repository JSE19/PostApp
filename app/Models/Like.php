<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Like;

class Like extends Model
{
    use HasFactory;
    
    protected $fillable = [
    	'user_id'
    ];
}
