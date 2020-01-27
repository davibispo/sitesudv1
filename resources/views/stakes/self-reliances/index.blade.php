@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Autossuficiência da Estaca</b></div>
                <div class="panel-body">
                    <div class="text-center">    
                        <a href="{!!route('talents.index')!!}" class="btn btn-warning btn-xs">
                            Banco de Talentos
                        </a>
                        <a href="{!!route('groups.index')!!}" class="btn btn-primary btn-xs">
                            Grupos/Cursos
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


