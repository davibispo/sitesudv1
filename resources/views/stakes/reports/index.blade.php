@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Relatórios</b></div>

                <div class="panel-body">
                    <div class="text-left">
                        <a href="{{route('reportsumos.index')}}" class="btn btn-primary btn-xs">
                            Relatório de Sumo Conselheiro
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

