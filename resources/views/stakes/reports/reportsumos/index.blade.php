@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Relatório de Sumo Conselheiro</b></div>

                <div class="panel-body">
                    <div class="text-left">
                        <a href="{{route('reports.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>
                        <a href="{{route('reportsumos.create')}}" class="btn btn-primary btn-xs">
                           Novo Relatório
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

