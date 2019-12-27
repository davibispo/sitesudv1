@extends('layouts.print-version')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading text-center"><b>Pré-calendário da Estaca {{$stake}} - {{date('Y', strtotime('+1 year'))}}</b></div>
                <div class="text-center">
                    <a onclick="javascript:window.print();" class="btn btn-link btn-xs">
                        <i class="fas fa-print"></i>
                        <b>Impressão</b>
                    </a>
                </div>
                <div class="panel-body">
                    <table class="table table-striped table-hover" style="font-size:12px">
                        <thead>
                            <tr>
                                <th>Data</th>
                                <th>Hora</th>
                                <th>Evento</th>
                                <th>Local</th>
                                <th>Organização</th>
                                <th>Público alvo</th>
                                @can('calendar_create')
                                <th></th>
                                <th></th>
                                @endcan
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($calendars as $calendar)
                                @if(date('Y', strtotime($calendar->data)) == date('Y', strtotime('+1 year')))
                                <tr>
                                    <td><b>{{ date('d/m', strtotime($calendar->data))}}</b></td>
                                    <td>{{$calendar->horario}}</td>
                                    <td>{{$calendar->evento}}</td>
                                    <td>{{$calendar->local}}</td>
                                    <td>{{$calendar->organizacao}}</td>
                                    <td>{{$calendar->publico}}</td>
                                    @can('calendar_create')
                                    <td>
                                        <a href="{{route('calendars.edit', $calendar->id)}}" data-toggle = tooltip title=Editar>editar</a> 
                                    </td>
                                    <td>
                                        {!! Form::open(['method'=>'DELETE', 'action'=>['CalendarController@destroy', $calendar->id], 'style'=>'display:inline']) !!}
                                            {!! Form::submit('excluir', ['class'=>'btn btn-link btn-xs', 'data-toggle'=>'tooltip', 'title'=>'Excluir']) !!}
                                        {!! Form::close() !!}
                                    </td>
                                    @endcan
                                </tr>
                                @endif
                            @empty
                            <div class=" well alert-warning">
                                <p>Não tem Eventos cadastrados!</p>
                            </div>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>



@endsection

