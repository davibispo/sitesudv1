@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Editar Caravana da Estaca {{$stake}}</div>

                <div class="panel-body">
                    {!! Form::model($caravan,['method'=>'PATCH', 'action'=>['CaravanController@update', $caravan->id], 'class'=>'form-horizontal']) !!}
    
                    <div class="form-group">
                        {!! Form::label('data', 'Data da Caravana', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::date('data', null, ['class' => 'form-control', 'required']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('status', 'Tipo', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                        Dia:    {!! Form::radio('status', '0', ['class' => 'form-control']) !!}
                        </div>
                        <div class="col-md-6">
                        Semana:    {!! Form::radio('status', '1', ['class' => 'form-control']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('leader', 'Líder da caravana', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::text('leader', null, ['class' => 'form-control']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('phone', 'Telefone do líder', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::text('phone', null, ['class' => 'form-control']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('bus', 'Valor do ônibus', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::text('bus', null, ['class' => 'form-control', 'required']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('accommodation', 'Valor do alojamento (individual)', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::text('accommodation', null, ['class' => 'form-control', 'required']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('obs', 'Observações', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                        <textarea name="obs" cols="40" class="form-control">{{$caravan->obs}}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            {!! Form::submit('Atualizar Caravana', ['class'=>'btn btn-warning']) !!}
                        </div>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection



