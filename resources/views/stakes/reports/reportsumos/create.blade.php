@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Novo Relatório de Sumo Conselheiro</b></div>

                <div class="panel-body">
                    <div class="text-left">
                        <a href="{{route('reports.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>
                    </div>
                    <br>
                    <div class="alert alert-success">
                        <p>Texto de incentivo...</p>
                    </div>
                    {!! Form::open([]) !!}
                        <div class="input-group">
                            <span class="input-group-addon">Sumo Conselheiro</span>
                            <input type="text" class="form-control" name="nome" value="{{ $nome }} {{ $sobrenome }}" disabled>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">Unidade</span>
                            <input type="text" class="form-control" name="unidade" value="{{ $unidade }}" disabled>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">Contato</span>
                            <input type="text" class="form-control" name="telefone" value="{{ $telefone }}" disabled>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">Assistiu o Treinamento de Ministração</span>
                            <input type="text" class="form-control" name="telefone" value="{{ $telefone }}">
                        </div>
                    {!! Form::close() !!}
                </div>

            </div>
        </div>
    </div>
</div>

@endsection

