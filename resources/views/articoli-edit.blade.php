@extends('layouts.layout')
@section('titolo') Modifica un articolo @endsection
@section('metadescription') Modifica un articolo nel database @endsection

@section('contenuto')
    <h3 class="text-center mb-3 p-4 bg-light text-secondary col-md-8 mx-auto rounded">Modifica articolo</h3>

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

    <form action="?" method='post' enctype="multipart/form-data" class="m-4 bg-light text-secondary rounded col-md-8 mx-auto pt-4">
        <div class="col-md-8 d-flex flex-column align-items-center mx-auto">
            <input type="hidden" name="_token" value="{{ csrf_token()}}">
                <div class="col-md-12 mb-3">
                    <label for="nome">Titolo</label>
                    <input type="text" class="form-control" id="titolo" name="titolo" value="{{ $articolo->titolo }}">
                </div>

                <div class="col-md-12 mb-3">
                    <label for="cognome">Autore</label>
                    <input type="text" class="form-control" id="autore" name="autore" value="{{ $articolo->autore }}">
                </div>


                <div class="col-md-12 mb-3">
                    <label for="descrizione">Descrizione (max 250 caratteri)</label>
                    <textarea class="form-control" name="descrizione" id="descrizione" rows="5">{{ $articolo->descrizione }}</textarea>
                </div>

                <div class="col-md-12 mb-3">
                    <label for="testo">Testo dell'articolo</label>
                    <textarea class="form-control" name="testo" id="testo" rows="10">{{ $articolo->testo }}</textarea>
                </div>

                <div class="col-md-12 mb-3">
                    <label for="testo">Categoria</label>
                    <select class="form-control" name="category_id" id="category_id">
                        @foreach($categories as $category)
                            @if($category->id == $articolo->category_id)
                                <option selected value="{{$category->id}}">{{$category->name}}</option>
                            @else
                                <option value="{{$category->id}}">{{$category->name}}</option>
                            @endif
                    @endforeach
                    </select>
                </div>



                <div class="col-md-12 mb-3">
                    <label for="data_insert">Data di inserimento</label>
                    <input type="date" class="form-control" id="data_insert" name="data_insert" value="{{ $articolo->data_insert }}">
                </div>

                <div class="col-md-12 mb-3">
                    <label for="foto"></label>
                    <input type="file" class="form-control" name="foto" id="foto">
                </div>

            <div class="d-grid gap-2 col-4 mx-auto mb-4">
                <button type="submit" class="btn btn-primary">Modifica</button>
            </div>
        </div>
    </form>
@endsection