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
                    
                    <div class="container">
                        <form class="form-horizontal" action="/action_page.php">

                          <div class="form-group">
                            <label class="control-label col-sm-2" for="">Nome:</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="" placeholder="{{auth()->user()->name}} {{auth()->user()->lastname}} " disabled>
                            </div>
                          </div>

                          <div class="form-group">
                            <label class="control-label col-sm-2" for="">Responsável por:</label>
                            <div class="col-sm-8">          
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Sociedade de Socorro
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Moças
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Rapazes
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Escola Dominical
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Primária
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Escola Dominical
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">JAS
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Assuntos Públicos
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">História da Família
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Caravanas
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Obra Missionária
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Seminário
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Tecnologia
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Música
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">Auditoria
                                </label>
                            </div>
                          </div>

                          <div class="form-group">
                            <label class="control-label col-sm-2" for="">Data de treinamento:</label>
                            <div class="col-sm-3">
                                <input type="date" class="form-control" id="">
                                <p><i>Quando foi realizado treinamento</i></p>
                            </div>
                          </div>


                          <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-8">
                              <button type="submit" class="btn btn-success">Enviar Formulário</button>
                            </div>
                          </div>

                        </form>
                    </div>
                    
                </div>

            </div>
        </div>
    </div>
</div>

@endsection

