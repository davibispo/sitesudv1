@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Agendas Sacramentais</b></div>

                <div class="panel-body">
                    @can('sacramental_meeting_create')
                    <div class="">
                        <a href="{{route('sacramental-meetings.create')}}" class="btn btn-primary btn-xs">
                            Nova Agenda
                        </a>
                        <a href="{{route('sacramental-meetings.chart')}}" class="btn btn-success btn-xs">
                            <i class="fas fa-chart-line"></i> 
                            Gráfico
                        </a>
                    </div>
                    @endcan
                    <br>    
                    <input class="form-control" id="myInput" type="text" placeholder="Filtrar..">
                    <br>
                    <table class="table table-striped table-hover">
                        <tr>
                            <th>Data</th>
                            <th>Unidade</th>
                            <th>Presidida por</th>
                            <th>Dirigida por</th>
                            <th>Frequência</th>
                            @can('sacramental_meeting_update')
                            <th></th>
                            <th></th>
                            @endcan
                        </tr>
                        <tbody id="myTable">
                        @foreach ($sacramentalMeetings as $sacramentalMeeting)
                            <tr>
                                <td>{{date('d-m-y',strtotime($sacramentalMeeting->date))}}</td>
                                <td>{{$sacramentalMeeting->ward}}</td>
                                <td>{{$sacramentalMeeting->presidida}}</td>
                                <td>{{$sacramentalMeeting->dirigida}}</td>
                                <td><b>{{$sacramentalMeeting->frequencia}}</b></td>
                                @can('sacramental_meeting_update')
                                <td><a href="{{route('sacramental-meetings.show',$sacramentalMeeting->id)}}" target="_blank" data-toggle = tooltip title=Ver>ver</a></td>
                                <td><a href="{{route('sacramental-meetings.edit',$sacramentalMeeting->id)}}" data-toggle = tooltip title=Editar>editar</a></td>
                                @endcan
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    
                </div>
            </div>
        </div>
    </div>
</div>

@endsection