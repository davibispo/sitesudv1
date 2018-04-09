@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading text-center">
                    <b>CONSELHO DE COORDENAÇÃO MACEIÓ</b>
                </div>

                <div class="panel-body">
                    
                    <div class="well text-center">
                        Esta página é visualizada apenas pelos membros do Conselho de Coordenação Maceió.
                    </div>
                    
                    <div class="btn-group btn-group-justified">
                        <a href="{{route('conselor.calendars.index')}}" class="btn btn-default btn-lg"><i class="fas fa-calendar-alt"></i> Calendário</a>
                        <a href="{{route('conselor.stakes.index')}}" class="btn btn-default btn-lg"><i class="fas fa-home"></i> Estacas/Distritos</a>
                        <a href="{{route('conselor.leaders.index')}}" class="btn btn-default btn-lg"><i class="fas fa-users"></i> Especialistas</a>
                    </div>
                    
                    <div class="btn-group btn-group-justified">
                        <a href="{{route('conselor.meetings.index')}}" class="btn btn-default btn-lg"><i class="fas fa-edit"></i> Agendas</a>
                        @can('adm')
                        <a href="#" class="btn btn-default btn-lg"><i class="fas fa-copy"></i> Arquivos</a>
                        <a href="#" class="btn btn-default btn-lg"></a>
                        @endcan
                    </div>

                    <div><br></div>

                </div>
            </div>
        </div>
    </div>
</div>

@endsection