@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">Estaca <b>{{$stake}}</b></div>
            <div class="col-sm-12">

                <div class="well well-xs">
                    <h4>Acesso rápido</h4>
                </div>

                <div class="row">
                    
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Calendário</h4>
                            @can('calendar_index')
                            <p><a href="{{route('calendars.index')}}">Ver</a></p>    
                            @endcan
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Entrevistas</h4>
                            @can('interview_index')
                            <p><a href="{{route('interviews.index')}}">Solicitar</a></p> 
                            @endcan
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Caravanas</h4>
                            @can('caravan_index')
                            <p><a href="{{route('caravans.index')}}">Criar</a></p>
                            @endcan
                            @can('caravan_user_index')
                            <p><a href="{{route('caravan-users.index')}}">Reservas</a></p> 
                            @endcan
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Chamados</h4>
                            @can('called_index')
                            <p><a href="{{route('calleds.index')}}">Ver Indicações</a></p> 
                            @endcan
                            @can('called_create')
                            <p><a href="{{route('calleds.create')}}">Indicar</a></p> 
                            @endcan
                            
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Equipamentos</h4>
                            @can('equipment_index')
                            <p><a href="{{route('equipments.index')}}">Cadastrar</a></p> 
                            @endcan
                            @can('equipment_rent_index')
                            <p><a href="{{route('equipment-rents.index')}}">Empréstimos</a></p> 
                            @endcan
                        </div>
                    </div>
                    @can('meeting_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Reuniões</h4>
                            <p><a href="{{route('meetings.index')}}">Agendas</a></p> 
                        </div>
                    </div>
                    @endcan
                    @can('conselor_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Conselho Maceió</h4>
                            <p><a href="{{route('conselor.index')}}">Acessar</a></p> 
                        </div>
                    </div>
                    @endcan
                </div>
               
            </div>
            
        </div>
    </div>
</div>


@endsection
