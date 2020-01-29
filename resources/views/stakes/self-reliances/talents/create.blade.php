@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Banco de Talentos</b></div>
            
                <div class="panel-body">
                    
                    <div class="text-left">
                        <a href="{{route('talents.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>    
                    </div>
                    <br>

                    
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


