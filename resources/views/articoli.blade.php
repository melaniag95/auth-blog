@extends('layouts.layout')
@section('titolo') Articoli del blog @endsection
@section('metadescription') Elenco articoli del blog @endsection

@section('contenuto')
<main class="container">
    <div class="p-4 p-md-5 mb-4 rounded bg-light text-dark">
      <div class="col-md-6 px-0 mx-auto text-center">
        <h4 class="display-4 fw-bold">Cosa succede nel mondo?</h4>
        <p class="lead my-3">Scopri la nostra selezione di articoli</p>
      </div>
    </div>
    

    <div class="row mb-3">

        @foreach($articoli as $articolo)
            <div class="col-md-6">
                <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative ">
                    <div class="col p-4 d-flex flex-column position-static bg-light text-dark" style="height: 300px">
                        <strong class="d-inline-block mb-2 text-primary">{{$articolo->category->name}}</strong>                                            
                        <h4 class="mb-0">{{$articolo->titolo}}</h4>
                        <div class="mb-1 text-muted">{{ date('d-m-Y', strtotime($articolo->data_insert)) }}</div>
                        <div class="card-text mb-auto">{!!$articolo->descrizione!!}</div>
                        <div class="mx-auto">
                            <a href="/dettaglio/{{$articolo->id}}" class="btn btn-primary">Continua a leggere</a>
                        </div>
                        
                    </div>
                </div>
            </div>
        @endforeach

    </div>
    <div class="mx-auto">
        {{$articoli->links()}}
    </div>
</main>  
@endsection