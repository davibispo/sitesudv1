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
                            {!! Form::label('qtdPoltronas', 'Quantidade Vagas', ['class'=>'col-md-4 control-label']) !!}
                            <div class="col-md-6">
                                {!! Form::select('qtdPoltronas', 
                                    [
                                        '50' => '50', 
                                        '49' => '49', 
                                        '48' => '48', 
                                        '47' => '47', 
                                        '46' => '46', 
                                        '45' => '45', 
                                        '44' => '44', 
                                        '43' => '43', 
                                        '42' => '42', 
                                        '41' => '41', 
                                        '40' => '40', 
                                        '39' => '39', 
                                        '38' => '38', 
                                        '37' => '37', 
                                        '36' => '36', 
                                        '35' => '35', 
                                        '34' => '34', 
                                        '33' => '33', 
                                        '32' => '32', 
                                        '31' => '31', 
                                        '30' => '30', 
                                        '29' => '29', 
                                        '28' => '28', 
                                        '27' => '27', 
                                        '26' => '26', 
                                        '25' => '25', 
                                        '24' => '24', 
                                        '23' => '23', 
                                        '22' => '22', 
                                        '21' => '21', 
                                        '20' => '20',    
                                    ], 
                                    null, ['class' => 'form-control', 'required']) 
                                !!}     
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



