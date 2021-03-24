<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Models\Articoli;
use App\Models\Category;
use App\Models\ArticoliFoto;


class ArticoliController extends Controller
{
    public function index(){
        $articoli = Articoli::with('category')->orderBy('data_insert')->paginate(4);
        return view('articoli', compact('articoli'));
    }

    public function getArticoloById($id){
        $articolo = Articoli::find($id);
        if($articolo){
            return view('dettaglio', compact('articolo'));
        } else{
            return redirect('/articoli');
        }
    }


    public function elencoArticoli(){
        $articoli = Articoli::orderBy('data_insert')->paginate(5);
        return view('dashboard', compact('articoli'));
    }

    public function add(){
        $categories = Category::orderBy('name')->get();
        return view('articoli-add', compact('categories'));
    }

    public function create(Request $request){
        /*validazione*/
        $this->validate($request, [
            'titolo'=> 'required|string|min:3|regex:/^[\.a-zA-Z0-9,!? ]*$/',
            'autore'=> 'required|string|min:3|regex:/^[a-zA-Z\, ]{1,100}$/',
            'descrizione'=> 'required|string|min:50|max:250',
            'testo'=> 'required|min:50',
            'data_insert'=> 'required|min:1',
        ], [
            //titolo
            'titolo.required' => 'Titolo è un campo obbligatorio',
            'titolo.min' => 'Titolo deve contenere almeno 3 caratteri',
            'titolo.regex' => 'Titolo può contenere solo caratteri a-z, A-Z',

            //autore
            'autore.required' => 'Autore è un campo obbligatorio',
            'autore.min' => 'Autore deve contenere almeno 3 caratteri',
            'autore.regex' => 'Autore può contenere solo caratteri a-z, A-Z',

            //descrizione
            'descrizione.required' => 'Descrizione è un campo obbligatorio',
            'descrizione.min' => 'Descrizione deve contenere almeno 50 caratteri',
            'descrizione.min' => 'Descrizione deve contenere massimo 250 caratteri',

            //testo
            'testo.required' => 'Testo è un campo obbligatorio',
            'testo.min' => 'Testo deve contenere almeno 50 caratteri',

            //data di inserimento
            'data_insert.required' => 'Data di inserimento è un campo obbligatorio',
            'data_insert.min' => 'Data di inserimento deve contenere almeno 3 caratteri',
        ]);

        /*salvataggio*/
        $articolo = new Articoli;
        $articolo->titolo = $request->input('titolo');
        $articolo->autore = $request->input('autore');
        $articolo->descrizione = $request->input('descrizione');
        $articolo->testo = $request->input('testo');
        $articolo->data_insert = $request->input('data_insert');
        $articolo->category_id = $request->input('category_id');
        $foto = $request->file('foto');
        if($foto){
            $filename = $foto->getClientOriginalName(); 
            $filename = preg_replace("/[^a-z0-9\.]/","", strtolower($filename));
            $destinationPath = 'immagini/'.date("Ym");
            $foto->move($destinationPath, $filename);
            $articolo->foto = '/'.$destinationPath.'/'.$filename;
        }
        $articolo->save();
        return redirect('/dashboard')->with('success_message', 'L\'articolo è stato aggiunto correttamente');
    }

    public function edit($id){
        $categories = Category::orderBy('name')->get();
        $articolo = Articoli::find($id);
        return view('articoli-edit', compact('articolo', 'categories'));
    }

    
    public function save(Request $request, $id){
        /*validazione*/
        $this->validate($request, [
            'titolo'=> 'required|string|min:3|regex:/^[\.a-zA-Z0-9,!? ]*$/',
            'autore'=> 'required|string|min:3|regex:/^[a-zA-Z\, ]{1,100}$/',
            'descrizione'=> 'required|string|min:50|max:250',
            'testo'=> 'required|min:50',
            'data_insert'=> 'required|min:1',
        ], [
            //titolo
            'titolo.required' => 'Titolo è un campo obbligatorio',
            'titolo.min' => 'Titolo deve contenere almeno 3 caratteri',
            'titolo.regex' => 'Titolo può contenere solo caratteri a-z, A-Z',

            //autore
            'autore.required' => 'Autore è un campo obbligatorio',
            'autore.min' => 'Autore deve contenere almeno 3 caratteri',
            'autore.regex' => 'Autore può contenere solo caratteri a-z, A-Z',

            //descrizione
            'descrizione.required' => 'Descrizione è un campo obbligatorio',
            'descrizione.min' => 'Descrizione deve contenere almeno 50 caratteri',
            'descrizione.min' => 'Descrizione deve contenere massimo 250 caratteri',

            //testo
            'testo.required' => 'Testo è un campo obbligatorio',
            'testo.min' => 'Testo deve contenere almeno 50 caratteri',

            //data di inserimento
            'data_insert.required' => 'Data di inserimento è un campo obbligatorio',
            'data_insert.min' => 'Data di inserimento deve contenere almeno 3 caratteri',
        ]);

        /*update*/
        $articolo = Articoli::find($id);
        $articolo->titolo = $request->input('titolo');
        $articolo->autore = $request->input('autore');
        $articolo->descrizione = $request->input('descrizione');
        $articolo->testo = $request->input('testo');
        $articolo->data_insert = $request->input('data_insert');
        $articolo->category_id = $request->input('category_id');
        $foto = $request->file('foto');
        if($foto){
            $filename = $foto->getClientOriginalName(); 
            $filename = preg_replace("/[^a-z0-9\.]/","", strtolower($filename));
            $destinationPath = 'immagini/'.date("Ym");
            $foto->move($destinationPath, $filename);
            $articolo->foto = '/'.$destinationPath.'/'.$filename;
        }
        $articolo->save();
        return redirect('/dashboard')->with('success_message', 'L\'articolo è stato modificato correttamente');
    }

    public function elimina($id){
        Articoli::find($id)->delete();
        return redirect('/dashboard')->with('success_message', 'Articolo eliminato correttamente');
    }

    public function galleria($id){
        $items = ArticoliFoto::where('articolo_id', $id)->get();
        return view('articoli-foto', compact('items'));
    }
    
    public function uploadFoto(Request $request, $id){
        $foto = $request->file('foto');
        if($foto){
            $filename = $foto->getClientOriginalName(); 
            $filename = preg_replace("/[^a-z0-9\.]/","", strtolower($filename));
            $destinationPath = 'immagini/'.date("Ym");
            $foto->move($destinationPath, $filename);
            $nuovaFoto = new ArticoliFoto;
            $nuovaFoto->articolo_id = $id;
            $nuovaFoto->foto = '/'.$destinationPath.'/'.$filename;
            $nuovaFoto->save();
        }
        return redirect('/articoli/foto/'.$id)->with('success_message', 'La foto è stata aggiunta correttamente');
    
    }
}
