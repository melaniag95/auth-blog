<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ArticoliFoto extends Model
{
    use HasFactory;

    protected $table = 'articoli_foto';
    protected $fillable = ['id', 'articolo_id', 'foto', 'created_at', 'updated_at'];
}
