@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Cadastro de Equipamento da Estaca {{$stake}}</b></div>

                <div class="panel-body">

                    <div class="text-left">
                        <a href="{{route('equipments.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>
                    </div>

                    {!! Form::open(['method'=>'POST', 'action'=>'EquipmentController@store', 'class'=>'form-horizontal']) !!}
                        {!! Form::hidden('stake', $stake)!!}
                        <div class="form-group">
                            {!! Form::label('name', 'Equipamento', ['class'=>'col-md-4 control-label']) !!}
                            <div class="col-md-6">
                                {!! Form::text('name', null, ['class'=>'form-control','maxlength'=>'60', 'required']) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            {!! Form::label('marca', 'Marca', ['class'=>'col-md-4 control-label']) !!}
                            <div class="col-md-6">
                                {!! Form::text('marca', null, ['class'=>'form-control']) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            {!! Form::label('modelo', 'Modelo', ['class'=>'col-md-4 control-label']) !!}
                            <div class="col-md-6">
                                {!! Form::text('modelo', null, ['class'=>'form-control']) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            {!! Form::label('num_serie', 'Nº Série', ['class'=>'col-md-4 control-label']) !!}
                            <div class="col-md-6">
                                {!! Form::text('num_serie', null, ['class'=>'form-control']) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                {!! Form::hidden('qtd', 1, ['class'=>'form-control']) !!}
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                {!! Form::submit('Cadastrar Equipamento', ['class'=>'btn btn-primary']) !!}
                            </div>
                        </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


