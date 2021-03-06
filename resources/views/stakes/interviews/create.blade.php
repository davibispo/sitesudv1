@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Solicitar entrevista com presidência da Estaca {{$stake}} ou Bênção Patriarcal</b></div>

                <div class="panel-body">
                    <div class="alert alert-warning">
                    <ul>
                        <li><b>Renovações de recomendação</b> serão realizadas pelos <b>Conselheiros</b> da Estaca e o membro
                        deve ter passado por entrevista com o bispado antes.</li>
                        <li><b>Primeira recomendação</b> e Entrevista para Missão serão realizadas pelo <b>Presidente</b> da Estaca.</li>
                        <li>Antes de agendar a <b>Bênção Patriarcal</b>, o membro deve ter passado por <b>entrevista com o bispo</b> da unidade antes.</li>
                    </ul>
                    </div>
                    {!! Form::open(['method'=>'POST', 'action'=>'InterviewController@store', 'class'=>'form-horizontal']) !!}
                    @can('sacramental_meeting_index')
                    <div class="form-group">
                        {!! Form::label('nome', 'Solicitar para outra pessoa:', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::text('nome', null, ['class' => 'form-control', 'placeholder'=>'Nome do membro de sua ala']) !!}
                        </div>
                    </div>
                    @endcan
                    <div class="form-group">
                        {!! Form::label('reason', 'Motivo da entrevista', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            <select name="interview_type_id" class="form-control">
                                <option value=""> -- Escolha o motivo da entrevista -- </option>
                                @foreach($interviewTypes as $interviewType)
                                    <option value="{{$interviewType->id}}">{{$interviewType->description}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        {!! Form::label('interviewer', 'Entrevistador', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::select('interviewer', [
                                'Presidente' => 'Presidente da Estaca', 
                                '1º Cons.' => '1º Conselheiro',
                                '2º Cons.' => '2º Conselheiro',
                                'Patriarca' => 'Patriarca',
                                ], null, ['class' => 'form-control', 'placeholder' => '-- Escolha o entrevistador --']) !!}
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            {!! Form::submit('Enviar Solicitação', ['class'=>'btn btn-primary']) !!}
                        </div>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


