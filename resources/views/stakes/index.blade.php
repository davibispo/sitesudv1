@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">Estaca Maceió Brasil <b>Tabuleiro</b></div>
            <div class="col-sm-12">

                <div class="well well-xs">
                    <h4>Acesso rápido</h4>
                </div>

                <div class="row">
                    
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{route('calendars.index')}}">Calendário</a></h4>
                            <p>Atividades</p>    
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{route('interviews.index')}}">Entrevistas</a></h4>
                            <p>Marcar</p> 
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Caravanas</h4>
                            <p><a href="{{route('caravans.index')}}">Criar</a></p>
                            <p><a href="{{route('caravan-users.index')}}">Reservas</a></p> 
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Chamados</h4>
                            <p><a href="{{route('calleds.index')}}">Ver Indicações</a></p> 
                            <p><a href="{{route('calleds.create')}}">Indicar</a></p> 
                            
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Equipamentos</h4>
                            <p><a href="{{route('equipments.index')}}">Cadastrar</a></p> 
                            <p><a href="{{route('equipment-rents.index')}}">Empréstimos</a></p> 
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="well">
                            <h4>Reuniões</h4>
                            <p><a href="{{route('meetings.index')}}">Agendas</a></p> 
                        </div>
                    </div>
                    
                </div>
               
            </div>
            
        </div>
    </div>
</div>


@endsection
