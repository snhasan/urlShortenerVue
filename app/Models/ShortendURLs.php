<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShortendURLs extends Model
{

    use HasFactory;

    protected $table = "ShortendURLs";
    protected $fillable = [
        'mainlink',
        'hash'
    ];
}
