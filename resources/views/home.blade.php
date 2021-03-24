@extends('layouts.layout')
@section('titolo') Il mio primo blog - Home @endsection
@section('metadescription') Il mio primo blog - articoli di attualità @endsection

@section('contenuto')
    <div class="p-4 mt-4 text-center">
        <h1>Benvenuti nel mio blog</h1>
        <p class="lead">Qui troverete una selezione di articoli di politica e attualità,<br> frutto del lavoro di famosi giornalisti internazionali</p>
        <p class="lead">
        <a href="/articoli" class="btn btn-lg btn-secondary fw-bold border-white bg-white text-dark mb-3">Scopri di più</a>
        <br>
        </p>
    </div>
@endsection