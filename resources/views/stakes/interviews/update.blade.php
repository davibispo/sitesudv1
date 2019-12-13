@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Controle de Entrevistas da Estaca {{$stake}}</b></div>

                <div class="panel-body">
                    <table class="table table-striped table-hover" style="font-size:12px">
                        
                        <tbody>
                            @if($interview->interview_type_id == 6)
                            @can('interview_update_patriarca')
                            <tr>
                                <th>Membro</th>
                                <td>
                                    @if (isset($interview->nome))
                                        {{ $interview->nome }}
                                        @else
                                        {{$userName}} {{$userLastname}}
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <th>Telefone</th>
                                <td>{{$userPhone}}</td>
                            </tr>
                            <tr>
                                <th>Unidade</th>
                                <td>{{$userWard}}</td>
                            </tr>
                            <tr>
                                <th>Motivo da entrevista</th>
                                <td>{{$interviewType}}</td>
                            </tr>
                            <tr>
                                <th>Entrevistador</th>
                                <td>{{$interview->interviewer}}</td>
                            </tr>
                            <tr>
                                <th>Status</th>
                                <td>
                                    @switch($interview->status)
                                        @case(1)<font color='orange'>{{'Solicitada'}}</font>@break
                                        @case(2)<font color='green'><b>{{'CONFIRMADA'}}</b></font>@break
                                        @case(3)<font color='red'>{{'Cancelada'}}</font>@break
                                        @case(4)<font color='blue'>{{'Realizada'}}</font>@break
                                        @default Default case... 
                                    @endswitch
                                </td>
                            </tr>
                            <tr>
                                <th>Solicitada</th>
                                <td>{{date('d/m/Y', strtotime($interview->created_at))}}</td>
                            </tr>
                            <tr>
                                <th>Marcado para</th>
                                <td>
                                    @if(date('Y', strtotime($interview->data)) > '2017' )
                                        {{date('d/m/Y', strtotime($interview->data))}} às 
                                        {{date('H:i', strtotime($interview->data))}}
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <th>Local</th>
                                <td> {{$interview->local}} </td>
                            </tr>
                            @endcan
                            @else
                            @can('interview_update_presidencia')
                            <tr>
                                <th>Membro</th>
                                <td>
                                    @if (isset($interview->nome))
                                        {{ $interview->nome }}
                                        @else
                                        {{$userName}} {{$userLastname}}
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <th>Telefone</th>
                                <td>{{$userPhone}}</td>
                            </tr>
                            <tr>
                                <th>Unidade</th>
                                <td>{{$userWard}}</td>
                            </tr>
                            <tr>
                                <th>Motivo da entrevista</th>
                                <td>{{$interviewType}}</td>
                            </tr>
                            <tr>
                                <th>Entrevistador</th>
                                <td>{{$interview->interviewer}}</td>
                            </tr>
                            <tr>
                                <th>Status</th>
                                <td>
                                    @switch($interview->status)
                                        @case(1)<font color='orange'>{{'Solicitada'}}</font>@break
                                        @case(2)<font color='green'><b>{{'CONFIRMADA'}}</b></font>@break
                                        @case(3)<font color='red'>{{'Cancelada'}}</font>@break
                                        @case(4)<font color='blue'>{{'Realizada'}}</font>@break
                                        @default Default case... 
                                    @endswitch
                                </td>
                            </tr>
                            <tr>
                                <th>Solicitada</th>
                                <td>{{date('d/m/Y', strtotime($interview->created_at))}}</td>
                            </tr>
                            <tr>
                                <th>Marcada para</th>
                                <td>
                                    @if(date('Y', strtotime($interview->data)) > '2017' )
                                        {{date('d/m/Y', strtotime($interview->data))}} às 
                                        {{date('H:i', strtotime($interview->data))}}
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <th>Local</th>
                                <td> {{$interview->local}} </td>
                            </tr>
                            @endcan
                            @endif
                        </tbody>
                    </table>
                        {!! Form::model($interview,['method'=>'PATCH', 'action'=>['InterviewController@update', $interview->id], 'class'=>'form-inline']) !!}
                    <div class="form-group text-left">
                        
                            <label for="data">Confirme o dia, hora e local da entrevista</label> <br>
                            <input type="datetime-local" class="form-control" name="data">
                            <input type="text" name="local" class="form-control" placeholder="Local da Entrevista" >
                            {!! Form::hidden('status', '2') !!}
                            {!! Form::submit('CONFIRMAR', ['class'=>'btn btn-success btn-sm']) !!}
                        {!! Form::close() !!}

                        <div class="form-group">    
                        {!! Form::model($interview,['method'=>'PATCH', 'action'=>['InterviewController@update', $interview->id], 'class'=>'form-inline']) !!}
                            {!! Form::hidden('data', null, ['class' => 'form-control']) !!}
                            {!! Form::hidden('status', '4') !!}
                            {!! Form::submit('Foi Realizada', ['class'=>'btn btn-primary btn-sm']) !!}
                        {!! Form::close() !!}
                        </div>
                        <div class="form-group">
                        {!! Form::model($interview,['method'=>'PATCH', 'action'=>['InterviewController@update', $interview->id], 'class'=>'form-inline']) !!}
                            {!! Form::hidden('data', null, ['class' => 'form-control']) !!}
                            {!! Form::hidden('status', '3') !!}
                            {!! Form::submit('Cancelada', ['class'=>'btn btn-danger btn-sm']) !!}
                        {!! Form::close() !!}
                        </div>
                        <div class="form-group">
                        {!! Form::open(['method'=>'DELETE', 'action'=>['InterviewController@destroy', $interview->id], 'style'=>'display:inline']) !!}
                            {!! Form::submit('Excluir', ['class'=>'btn btn-default btn-sm']) !!}
                        {!! Form::close() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection




