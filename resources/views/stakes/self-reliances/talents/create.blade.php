@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Banco de Talentos</b></div>
            
                <div class="panel-body">
                    
                    <div class="text-left">
                        <a href="{{route('talents.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>    
                    </div>
                    <br>

                    {!! Form::open(['method'=>'POST', 'action'=>'TalentsController@store', 'class'=>'form-horizontal']) !!}
                        
                    <div class="form-group">
                        {!! Form::label('nome', 'Nome', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::text('nome', null, ['class' => 'form-control','required', 'placeholder' => 'Nome do irmão/irmã']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('telefone1', 'Telefone 1', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::text('telefone1', null, ['class' => 'form-control','required','id'=>'phone', 'placeholder' => 'Digite o telefone com ddd']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('telefone2', 'Telefone 2', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::text('telefone2', null, ['class' => 'form-control','id'=>'phone2', 'placeholder' => 'Digite o telefone com ddd']) !!}
                        </div>
                    </div>
                    
                    <div class="form-group">
                        {!! Form::label('unidade', 'Ala/Ramo', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::text('unidade', null, ['class' => 'form-control','required', 'placeholder' => 'Digite a unidade']) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {!! Form::label('habilidades', 'Habilidades/Talentos', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            <textarea name="habilidades" rows="5" maxlength="600" class="form-control"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            {!! Form::submit('Enviar', ['class'=>'btn btn-primary btn-sm']) !!}
                        </div>
                    </div>
                    {!! Form::close() !!}
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


