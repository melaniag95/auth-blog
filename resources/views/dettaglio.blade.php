@extends('layouts.layout')
@section('titolo') {{$articolo->titolo}} @endsection
@section('metadescription') {{$articolo->descrizione}} @endsection

@section('contenuto')
    <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
        <div class="col-md-10 px-0">
            <h2 class="display-4 fst-italic fw-bold">{{$articolo->titolo}}</h2>
            <p class="text-secondary">Articolo aggiunto il: {{ date('d-m-Y', strtotime($articolo->data_insert)) }}</p>
            <p class="text-secondary">di {{$articolo->autore}}</p>
            
            <!--Foto articolo-->
            <div class="col-md-10 mx-auto m-4">
                @if($articolo->foto !== '')
                    <img src="{{$articolo->foto}}" alt="foto-articolo" class="w-100">
                @endif
                <div>
                    <a href="/articoli/foto/{{$articolo->id}}" class="btn btn-secondary">Galleria immagini</a>
                </div>
            </div>

            <div class="lead my-3 fw-bold">{{$articolo->descrizione}}</div>
            <div class="lead mt-4 mb-0 fs-5">{!!$articolo->testo!!}</div>
        </div>
    </div>
@endsection