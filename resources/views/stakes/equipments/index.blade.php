@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Equipamentos da Estaca {{$stake}}</b></div>

                <div class="panel-body">
                    <div class="text-left">
                        <a href="{{route('equipment-rents.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>
                    
                        <a href="{{route('equipments.create')}}" class="btn btn-primary btn-xs">
                            Cadastrar Novo Equipamento
                        </a>
                    </div>
                    <br>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Equipamento</th> 
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Nº Série</th>
                                <th>Disponível</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($equipments as $equipment)
                            <tr>
                                <td>{{$equipment->name}}</td>
                                <td>{{$equipment->marca}}</td>
                                <td>{{$equipment->modelo}}</td>
                                <td>{{$equipment->num_serie}}</td>
                                <td>
                                    @if ($equipment->ativo == 1)
                                        <a href="{{ route('equipments.ativar', $equipment->id) }}"><i class="fas fa-toggle-on" style="color:green"></i></a>
                                    @else
                                        <a href="{{ route('equipments.ativar', $equipment->id) }}"><i class="fas fa-toggle-off" style="color:red"></i></a>
                                    @endif
                                </td>
                                <td>
                                    <a href="{{route('equipments.edit', $equipment->id)}}" data-toggle = tooltip title=Editar><i class="fas fa-edit"></i></a> 
                                </td>
                                <td>
                                    {!! Form::open(['method'=>'DELETE', 'action'=>['EquipmentController@destroy', $equipment->id], 'style'=>'display:inline']) !!}
                                        {!! Form::submit('x', ['class'=>'btn btn-danger btn-xs', 'data-toggle'=>'tooltip', 'title'=>'Excluir']) !!}
                                    {!! Form::close() !!}
                                </td>
                            </tr>
                            @empty
                        <div class=" well alert-warning">
                            <p>Você não tem equipamentos cadastrados!</p>
                        </div>
                        @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

