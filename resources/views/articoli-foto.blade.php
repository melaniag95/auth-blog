@extends('layouts.layout')
@section('titolo') Galleria immagini @endsection
@section('metadescription') Galleria immagini dell'articolo @endsection

@section('css') 
    <style>

        img {
            vertical-align: middle;
        }
        .myDiv{
            position:relative;
        }

        .mySlides{
            display: none;
        }

        /* Add a pointer when hovering over the thumbnail images */
        .cursor {
            cursor: pointer;
        }

        /* Next & previous buttons */
        .prev,
        .next {
            cursor: pointer;
            position: absolute;
            top: 40%;
            width: auto;
            padding: 16px;
            margin-top: -50px;
            color: white;
            font-weight: bold;
            font-size: 20px;
            border-radius: 0 3px 3px 0;
            user-select: none;
            -webkit-user-select: none;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        /* On hover, add a black background color with a little bit see-through */
        .prev:hover,
        .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* Six columns side by side */
        .column {
            float: left;
            width: 16.66%;
        }

        /* Add a transparency effect for thumnbail images */
        .demo {
            opacity: 0.6;
        }

        .active,.demo:hover {
            opacity: 1;
        }
        

    </style>
@endsection

@section('contenuto')
    <!--Messaggio di successo per aggiunta foto-->
    @if(Session::has('success_message'))
        <div class="alert alert-success">{{ Session::get('success_message') }}</div>
    @endif

    <div class="rounded container bg-light text-dark text-center p-4 mb-3">
        <h2>Galleria immagini</h2>
    </div>


    <!--Slideshow-->
    <div class="myDiv mx-auto" style="position:relative; width:80%">
        <div class="row">
            @foreach($items as $item)
                <div class="mySlides text-center mb-3" width="80%">
                    <img style="width:60%" src="{{$item->foto}}" alt="foto" onclick="currentSlide({{ $loop->iteration }})">
                </div>
                <a class="prev text-decoration-none" onclick="plusSlides(-1)">❮</a>
                <a class="next text-decoration-none" onclick="plusSlides(+1)">❯</a>
            @endforeach
                
        </div>

        <div class="row d-flex justify-content-center">
            @foreach ($items as $item)
                <div class="column">
                    <img onclick="currentSlide({{$loop->iteration}})" style="width:100%" src="{{$item->foto}}" alt="foto" class="demo cursor">
                </div>
            @endforeach
        </div>

    </div>



    <!--Aggiungi foto-->
    <div class="col-md-6 mt-4 mx-auto">
        @auth
            <form action="?" method='post' enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{ csrf_token()}}">
                    <div class="input-group">
                        <input type="file" class="form-control" id="foto" name="foto">
                        <button class="btn btn-outline-primary" type="submit">Aggiungi foto</button>
                    </div>
            </form>
        @endauth
    </div>
        
@endsection
@section('script')
    <script type="text/javascript">
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
        showSlides(slideIndex += n);
        }

        function currentSlide(n) {
        showSlides(slideIndex = n);
        }

        function showSlides(n) {
        var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("demo");
            if (n > slides.length) {slideIndex = 1}
            if (n < 1) {slideIndex = slides.length}
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex-1].style.display = "block";
            dots[slideIndex-1].className += " active";
        }
    </script>
@endsection