@extends('layouts.layout')
@section('titolo') Area riservata @endsection
@section('metadescription') Area riservata @endsection

@section('contenuto')
    <div class="text-center mb-4">
        <h3>Benvenuto/a nell'area riservata</h3>
    </div>

    <!--Messaggio di successo per aggiunta/modifica articolo-->
    @if(Session::has('success_message'))
        <div class="alert alert-success">{{ Session::get('success_message') }}</div>
    @endif

    <div>
        <table class="table text-light">
            <thead class="bg-light text-dark">
                <th>Titolo</th>
                <th>Autore</th>
                <th colspan="2">Data inserimento</th>
            </thead>
            <tbody>
                @foreach ($articoli as $articolo)
                    <tr>
                        <td>{{$articolo->titolo}}</td>
                        <td>{{$articolo->autore}}</td>
                        <td>{{ date('d-m-Y', strtotime($articolo->data_insert)) }}</td>
                        <td>
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actions</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item"href="/dettaglio/{{$articolo->id}}">Scopri di più</a>
                                    <a class="dropdown-item"href="/articoli/edit/{{$articolo->id}}">Modifica</a>
                                    <a class="dropdown-item"href="/articoli/foto/{{$articolo->id}}">Galleria</a>
                                    <a class="dropdown-item" href="/articoli/elimina/{{$articolo->id}}" onclick="return confirm('Sei sicuro di voler eliminare l\'articolo?')">Elimina</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <div class="mx-auto">
            {{$articoli->links()}}
        </div>
        
        <div class="container d-flex justify-content-end">
            <a href="articoli/add" class="d-block btn btn-primary">Aggiungi articolo</a>
        </div>
        <div class="container d-flex justify-content-end mt-2">
            <a href="/logout" class="d-block btn btn-warning">Logout</a>
        </div>
    </div>
@endsection
