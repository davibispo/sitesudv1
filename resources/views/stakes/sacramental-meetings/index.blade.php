@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Reunião Sacramental de {{strtoupper($ward)}} da Estaca {{$stake}}</b></div>

                <div class="panel-body">
                    <div class="">
                        <a href="{{route('sacramental-meetings.create')}}" class="btn btn-primary btn-sm">
                            <i class="fas fa-plus"></i> 
                            Nova Agenda
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
                        @foreach ($sacramentalMeetings as $sacramentalMeeting)
                            <tr>
                                <th>{{date('d/m/Y',strtotime($sacramentalMeeting->date))}}</th>
                                <td>{{$sacramentalMeeting->presidida}}</td>
                                <td>{{$sacramentalMeeting->dirigida}}</td>
                                <td>{{$sacramentalMeeting->frequencia}}</td>
                                <td>
                                    <a href="{{route('sacramental-meetings.edit',$sacramentalMeeting->id)}}" class="btn btn-warning btn-xs"><i class="fas fa-edit"></i> editar</a>
                                    <a href="{{route('sacramental-meetings.show',$sacramentalMeeting->id)}}" target="_blank" class="btn btn-success btn-xs"><i class="fas fa-print"></i> imprimir</a>
                                    {!! Form::open(['method'=>'DELETE', 'action'=>['SacramentalMeetingController@destroy', $sacramentalMeeting->id], 'style'=>'display:inline']) !!}
                                        {!! Form::submit('excluir', ['class'=>'btn btn-danger btn-xs']) !!}
                                    {!! Form::close() !!}
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection