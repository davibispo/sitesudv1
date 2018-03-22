@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
            <div class="panel-heading text-center"><b>Grupos de Autossuficiência de {{strtoupper($ward)}}</b></div>

                <div class="panel-body">
                    
                    {!! Form::open(['method'=>'POST', 'action'=>'SelfRelianceController@store', 'class'=>'form-horizontal']) !!}
                    <div class="text-left">
                        <table class="table table-striped table-hover">
                            <tbody>
                                <tr>
                                    <td><input type="radio" name="grupo" required></td>
                                    <td><img src="{!! asset('assets/img/self/educacao.png') !!}" ></td>
                                    <td>Breve resumo do curso Breve resumo do curso Breve resumo do curso Breve resumo do curso
                                        Breve resumo do curso Breve resumo do curso Breve resumo do curso Breve resumo do curso
                                        Breve resumo do curso
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="radio" name="grupo" required></td>
                                    <td><img src="{!! asset('assets/img/self/emprego.png') !!}" ></td>
                                    <td>Breve resumo do curso Breve resumo do curso Breve resumo do curso Breve resumo do curso
                                        Breve resumo do curso Breve resumo do curso Breve resumo do curso Breve resumo do curso
                                        Breve resumo do curso
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="radio" name="grupo" required></td>
                                    <td><img src="{!! asset('assets/img/self/financas.png') !!}" ></td>
                                    <td>Breve resumo do curso Breve resumo do curso Breve resumo do curso Breve resumo do curso
                                        Breve resumo do curso Breve resumo do curso Breve resumo do curso Breve resumo do curso
                                        Breve resumo do curso
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="radio" name="grupo" required></td>
                                    <td><img src="{!! asset('assets/img/self/negocio.png') !!}" ></td>
                                    <td>Breve resumo do curso Breve resumo do curso Breve resumo do curso Breve resumo do curso
                                        Breve resumo do curso Breve resumo do curso Breve resumo do curso Breve resumo do curso
                                        Breve resumo do curso
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                    <div>
                        <a href="{{route('self-reliances.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            {!! Form::submit('Enviar Solicitação', ['class'=>'btn btn-primary']) !!}
                        </div>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


