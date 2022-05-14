<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kuesioner extends Model
{
    use HasFactory;
    protected $table = 'kuesioner';
    protected $primaryKey = 'id_kuesioner';
    public $timestamps = false;

    protected $fillable = [
        'pertanyaan',
        'id_dimensi',
        'variabel',
        'pila',
        'pilb',
        'pilc',
        'pild',
        'pile'
    ];
}
