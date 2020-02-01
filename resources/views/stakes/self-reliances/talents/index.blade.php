@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Banco de Talentos</b></div>
            
                <div class="panel-body">
                    <div class="text-left">
                        <a href="{{route('self-reliances.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>    
                        <a href="{!!route('talents.create')!!}" class="btn btn-primary btn-xs">
                            Adicionar
                        </a>
                    </div>
                    <br>
                    <div class="alert alert-success text-center">
                        <p>
                            Nesta lista temos irmãos e irmãs que possuem algum talento ou habilidade e estão dispostos a trabalhar.
                        </p>
                    </div>                  

                    <input class="form-control" id="myInput" type="text" placeholder="Filtrar..">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Contato</th>
                                <th>Unidade</th>
                                <th>Habilidades/Talentos</th> 
                                @can('self-reliance_edit')
                                <th></th>
                                @endcan
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            @forelse ($talents as $item)                           
                            <tr>
                                <td> {{$item->nome}} </td>
                                <td> {{$item->telefone1}} - {{$item->telefone2}} </td>
                                <td> {{$item->unidade}} </td>
                                <td> {{$item->habilidades}} </td>
                                @can('self-reliance_edit')
                                <td>
                                    {!! Form::open(['method'=>'DELETE', 'action'=>['TalentsController@destroy', $item->id], 'style'=>'display:inline']) !!}
                                        {!! Form::submit('x', ['class'=>'btn btn-danger btn-xs']) !!}
                                    {!! Form::close() !!}
                                </td>
                                @endcan
                            </tr>
                            @empty
                            <div class="alert alert-warning">
                                <p>Nenhum talento cadastrado ainda!</p>
                            </div>
                            @endforelse
                        </tbody>
                    </table>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


