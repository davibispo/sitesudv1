@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Grupos de Autossuficiência de {{strtoupper($ward)}}</b></div>

                <div class="panel-body">
                    <div class="text-center">
                        <a href="{!!route('self-reliances.create')!!}" class="btn btn-primary">
                            Escolher Grupo
                        </a>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr class="text-center">
                                <th>Educação para um <br>Emprego Melhor</th>
                                <th>Encontrar um <br>Emprego Melhor</th>
                                <th>Finanças Pessoais</th>
                                <th>Iniciar e Mehorar <br>Meu Negócio</th>
                            </tr>
                        </thead>
                    </table>
                    <br>
                    <div class="well text-center">
                        <a href="http://autossuficiencia.org.br/manuais/" target="_blank">
                            <i class="fas fa-download"></i>
                            Baixar Manuais
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


