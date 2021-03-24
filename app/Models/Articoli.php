<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category;

class Articoli extends Model
{
    use HasFactory;

    protected $table = 'articoli';
    protected $fillable = ['id', 'titolo', 'autore', 'descrizione', 'testo', 'categoria_id', 'data_insert', 'foto', 'created_at', 'updated_at'];

    public function category(){
        return $this->belongsTo(Category::class);
    }

}
