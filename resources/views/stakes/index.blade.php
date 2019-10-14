@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">Estaca <b>{{$stake}}</b></div>
            <div class="col-sm-12">

                <div class="alert alert-warning">
                    <div style="font-size:12px; text-align:justify;">
                        Mensagem da Presidência da Estaca: 
                        
                            @forelse($messages as $message)
                                @foreach($users as $user)
                                    @if($message->stake == $user->stake && $message->user_id == $user->id)
                                        <b>{{$message->message}}</b>
                                        <i>(Pres. {{$user->name}})</i>
                                    @endif
                                @endforeach
                            @empty
                                <b>Não há mensagem!</b>
                            @endforelse
                        <br>
                        @can('message_create')
                        <a href="{{route('messages.index')}}">Editar</a>
                        @endcan
                    </div>
                </div>

                <div class="row">
                    @can('calendar_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{route('calendars.index')}}">Calendário</a></h4>
                        </div>
                    </div>
                    @endcan
                    @can('interview_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{route('interviews.index')}}">Entrevistas</a></h4>
                        </div>
                    </div>
                    @endcan
                    @can('caravan_user_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{route('caravan-users.index')}}">Caravanas</a></h4>
                        </div>
                    </div>
                    @endcan
                    @can('called_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{route('calleds.index')}}">Chamados</a></h4>
                        </div>
                    </div>
                    @endcan
                </div>
                
                <div class="row">
                    @can('equipment_rent_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{route('equipment-rents.index')}}">Equipamentos</a></h4>
                        </div>
                    </div>
                    @endcan
                    @can('meeting_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{route('sacramental-meetings.index')}}">Sacramental</a></h4>
                        </div>
                    </div>
                    @endcan
                    @can('conselor_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{route('conselor.index')}}">Conselho Maceió</a></h4>
                        </div>
                    </div>
                    @endcan
                    @can('calendar_index')
                    <div class="col-sm-3">
                        <div class="well">
                            <h4><a href="{{ route('leaders.index') }}">Líderes</a></h4>
                        </div>
                    </div>
                    @endcan
                    
                </div>
               
            </div>
            
        </div>
    </div>
</div>


@endsection
