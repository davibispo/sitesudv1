@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Adicionar arquivo</b></div>

                <div class="panel-body">

                    <div>
                        <a href="{{route('downloads.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-back"></i> voltar
                        </a>
                    </div>
                    <br>                    
                    <div class="alert alert-warning">
                        <p class="text-center">
                            São permitidos arquivos no formato:
                            
                                <strong>.pdf</strong>
                                <strong>.jpg</strong>
                                <strong>.png</strong>
                                <strong>.docx</strong>
                                <strong>.xlsx</strong>
                                <strong>.pptx</strong>
                                <strong>.rar</strong>
                            com tamanho inferior a <strong>2 Mb</strong>.  
                        </p>
                    </div>

                    {!! Form::open(['method'=>'POST', 'action'=>'DownloadController@store','enctype'=>'multipart/form-data', 'class'=>'form-horizontal']) !!}
                        
                    <div class="form-group">
                        {!! Form::label('arquivo', 'Arquivo', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            {!! Form::file('arquivo', null, ['class'=>'form-control','required']) !!}
                        </div>
                    </div>
 
                    <div class="form-group">
                        {!! Form::label('descricao', 'Descrição', ['class'=>'col-md-4 control-label']) !!}
                        <div class="col-md-6">
                            <textarea name="descricao" maxlength="115" class="form-control" required></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            {!! Form::submit('Salvar Arquivo', ['class'=>'btn btn-primary']) !!}
                        </div>
                    </div>
                    {!! Form::close() !!}
                       
                </div>
                
            </div>
        </div>
    </div>
</div>

@endsection


