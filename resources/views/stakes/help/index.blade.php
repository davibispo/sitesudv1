@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Contribua!</b></div>

                <div class="panel-body">
                    <h4 style="text-align:center">Ajude a melhorar o SiteSUD!</h4>
                    <br>
                    <div>
                        <p>Contribua enviando sugestões para melhoria do site:</p>
                        @can('contact_index')
                        <a href="{{route('contacts.create')}}" class="btn btn-sm btn-success">Enviar sugestões de melhorias</a>
                        @endcan
                    </div>
                    <br>
                    <!--
                    <p>Se desejar você também pode contribuir realizando um depósito em qualquer valor na conta abaixo:</p>
                    <div class="alert alert-success">
                        <p>
                            <ins>Caixa Econômica Federal</ins> <br>
                            Agência: <b>1545</b><br>
                            Conta corrente: <b>9844-7</b>
                            
                        </p>
                    </div>
                    -->
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

