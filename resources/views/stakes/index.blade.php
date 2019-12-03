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
                        <div style="padding:3%">
                            <a class="btn btn-success btn-block" href="{{route('calendars.index')}}">Calendário</a>
                        </div>
                    </div>
                    @endcan
                    @can('interview_index')
                    <div class="col-sm-3">
                        <div style="padding:3%">
                            <a class="btn btn-success btn-block" href="{{route('interviews.index')}}">Entrevistas</a>
                        </div>
                    </div>
                    @endcan
                    @can('caravan_user_index')
                    <div class="col-sm-3">
                        <div style="padding:3%">
                            <a class="btn btn-success btn-block" href="{{route('caravan-users.index')}}">Caravanas</a>
                        </div>
                    </div>
                    @endcan
                    @can('called_index')
                    <div class="col-sm-3">
                        <div style="padding:3%">
                            <a class="btn btn-success btn-block" href="{{route('calleds.index')}}">Indicações</a>
                        </div>
                    </div>
                    @endcan
                </div>
                
                <div class="row">
                    @can('equipment_rent_index')
                    <div class="col-sm-3">
                        <div style="padding:3%">
                            <a class="btn btn-success btn-block" href="{{route('equipment-rents.index')}}">Equipamentos</a>
                        </div>
                    </div>
                    @endcan
                    @can('meeting_index')
                    <div class="col-sm-3">
                        <div style="padding:3%">
                            <a class="btn btn-success btn-block" href="{{route('sacramental-meetings.index')}}">Sacramental</a>
                        </div>
                    </div>
                    @endcan
                    @can('conselor_index')
                    <div class="col-sm-3">
                        <div style="padding:3%">
                            <a class="btn btn-success btn-block" href="{{route('conselor.index')}}">Conselho Maceió</a>
                        </div>
                    </div>
                    @endcan
                    @can('calendar_index')
                    <div class="col-sm-3">
                        <div style="padding:3%">
                            <a class="btn btn-success btn-block" href="{{ route('leaders.index') }}">Líderes</a>
                        </div>
                    </div>
                    @endcan
                    
                </div>
               
            </div>
            
        </div>
    </div>
</div>


@endsection
