@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Autossuficiência da Estaca {{$stake}} </b></div>
                <div class="panel-body">
                    <div class="text-center">  
                        <a href="{!!route('talents.index')!!}" class="btn btn-warning btn-xs">
                            Banco de Talentos
                        </a>
                        <a href="{!!route('groups.index')!!}" class="btn btn-primary btn-xs">
                            Grupos/Cursos
                        </a>
                        <hr>
                        <div>
                            <img class="img-rounded" src="{{asset('assets/img/self/autossuficiencia.jpg')}}" width="200px" alt="">
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


