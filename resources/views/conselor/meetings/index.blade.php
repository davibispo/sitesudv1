@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                    <div class="panel-heading text-center">
                        CONSELHO DE COORDENAÇÃO MACEIÓ
                        <br>
                        <b>AGENDAS DE REUNIÕES</b>
                    </div>

                <div class="panel-body">
                    <div class="text-left">
                        <a href="{{route('conselor.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>
                        <a href="{{route('conselor.meetings.create')}}" class="btn btn-primary btn-xs">
                            <i class="fas fa-plus"></i> Nova Agenda
                        </a>
                    </div>
                    <br>
                    <table class="table table-striped">
                        <tr>
                            <th>Data</th>
                            <th>Presidida</th>
                            <th>Dirigida</th>
                            <th>Frequência</th>
                            <th></th>
                        </tr>
                    
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection