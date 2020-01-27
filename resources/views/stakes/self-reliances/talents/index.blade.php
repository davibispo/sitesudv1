@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Banco de Talentos</b></div>
            <!--<div class="panel-heading">Inscrições para Cursos <b>ENGLISH CONNECT</b></div>-->

                <div class="panel-body">
                    
                    <div class="alert alert-success text-center">
                        <p>
                            Ao se inscrever em um dos cursos acompanhe o seu <b>status</b>, pois pode mudar de '<b style="color:orange">Solicitado</b>' 
                            para '<b style="color:green">Matriculado</b>' dependendo do número de vagas. <br>
                            <b>Procure seu líder de autossuficiência para mais informações.</b>
                        </p>
                    </div>
                    <input class="form-control" id="myInput" type="text" placeholder="Filtrar..">
                    <table class="table table-bordered table-hover" style="font-size:10px;">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Contato</th>
                                <th>Unidade</th>
                                <th>Talentos</th> 
                            </tr>
                        </thead>
                        <tbody id="myTable">
                                
                        </tbody>
                    </table>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


