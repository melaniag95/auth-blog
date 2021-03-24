@extends('layouts.layout')
@section('titolo') Aggiungi un articolo @endsection
@section('metadescription') Aggiungi un articolo al database @endsection

@section('contenuto')
    <h3 class="text-center mb-3 p-4 bg-light text-secondary rounded col-md-8 mx-auto">Aggiungi un nuovo articolo</h3>

    @if(count($errors->all()) > 0)
        <div class="alert alert-danger">
            <h4>Attenzione:</h4>
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="?" method='post' enctype="multipart/form-data" class="m-4 bg-light text-secondary rounded col-md-8 mx-auto pt-4 rounded">
        <div class="col-md-8 d-flex flex-column align-items-center mx-auto">
            <input type="hidden" name="_token" value="{{ csrf_token()}}">
                <div class="col-md-12 mb-3">
                    <label for="nome">Titolo</label>
                    <input type="text" class="form-control" id="titolo" name="titolo">
                </div>

                <div class="col-md-12 mb-3">
                    <label for="cognome">Autore</label>
                    <input type="text" class="form-control" id="autore" name="autore">
                </div>


                <div class="col-md-12 mb-3">
                    <label for="descrizione">Descrizione (max 250 caratteri)</label>
                    <textarea class="form-control" name="descrizione" id="descrizione" rows="5"></textarea>
                </div>

                <div class="col-md-12 mb-3">
                    <label for="testo">Testo dell'articolo</label>
                    <textarea class="form-control" name="testo" id="testo" rows="10"></textarea>
                </div>

                <div class="col-md-12 mb-3">
                    <label for="categoria">Categoria</label>
                    <select class="form-control" name="category_id" id="category_id">
                        @foreach($categories as $category)
                            <option value="{{$category->id}}">{{$category->name}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="col-md-12 mb-3">
                    <label for="data_insert">Data di inserimento</label>
                    <input type="date" class="form-control" id="data_insert" name="data_insert">
                </div>

                <div class="col-md-12 mb-3">
                    <label for="foto"></label>
                    <input type="file" class="form-control" name="foto" id="foto">
                </div>

            <div class="d-grid gap-2 col-4 mx-auto mb-4">
                <button type="submit" class="btn btn-primary">Aggiungi</button>
            </div>
        </div>
    </form>
@endsection