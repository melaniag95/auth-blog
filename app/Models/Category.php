<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Articoli;

class Category extends Model
{
    use HasFactory;
    protected $fillable = ['name'];

    public function articoli(){
        return $this->hasMany(Articoli::class);
    }
}
