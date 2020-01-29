@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Banco de Talentos</b></div>
            
                <div class="panel-body">
                    
                    <div class="alert alert-success text-center">
                        <p>
                            Nesta lista temos irmãos e irmãs que não possuem um emprego formal, mas possuem algum talento ou habilidade.
                        </p>
                    </div>

                    <div class="text-left">  
                        <a href="{!!route('talents.create')!!}" class="btn btn-primary btn-xs">Adicionar</a>
                    </div>
                    <br>

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


