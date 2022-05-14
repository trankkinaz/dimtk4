<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dimensi extends Model
{
    use HasFactory;
    
    protected $table = 'dimensi';
    protected $primaryKey = 'id_dimensi';
    public $timestamps = false;

    protected $fillable = [
        'dimensi',
        'bobot'
    ];

    protected $hidden = [
        'id_dimensi'
    ];
}

