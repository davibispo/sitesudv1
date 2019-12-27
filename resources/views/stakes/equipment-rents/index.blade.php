@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Empréstimo de Equipamentos da Estaca {{$stake}}</b></div>

                <div class="panel-body">
                    <div>
                        <a href="{{route('equipment-rents.create')}}" class="btn btn-primary btn-sm">Solicitar Equipamento</a>
                        @can('equipment_index')
                            <a href="{{route('equipments.index')}}" class="btn btn-sm btn-success">
                                <i class="fas fa-list"></i> Lista de Equipamentos
                            </a>
                        @endcan
                    </div>
                    <br>
                    <div style="overflow:auto; height: 600px;">
                    <table class="table table-striped" style="font-size: 12px">
                        <thead>
                            <tr>
                                <th>Equipamento</th>
                                <th>Membro</th> 
                                <th>Telefone</th> 
                                <th>Unidade</th> 
                                <th>Retirada</th>
                                <th>Devolução</th>
                                <th>Motivo da solicitação</th>
                                <th>Solicitado</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($equipmentRents as $equipmentRent)
                                @foreach($users as $user)
                                    @if($user->id == $equipmentRent->user_id)
                                        <tr rowspan="2">
                                            <td style="width:20%"><b>{{DB::table('equipment')->where('id',$equipmentRent->equipment_id)->value('name')}}</b></td>
                                            <td style="width:20%">{{$user->name}} {{$user->lastname}}</td>
                                            <td style="width:10%">{{$user->phone}}</td>
                                            <td style="width:12%">{{$user->ward}}</td>
                                            <td><b>{{date('d/m/y', strtotime($equipmentRent->get_date))}}</b></td>
                                            <td><b>{{date('d/m/y', strtotime($equipmentRent->return_date))}}</b></td>
                                            <td>{{$equipmentRent->reason_get}}</td>
                                            <td>{{date('d/m/y', strtotime($equipmentRent->created_at))}}</td>
                                        </tr>
                                        <tr>
                                            <td style="border-top:none;">
                                                @can('equipment_rent_update')
                                                <a href="{{route('equipment-rents.edit', $equipmentRent->id)}}" data-toggle="tooltip" title="Ações">
                                                    <i class="fas fa-sign-in-alt fa-lg"></i> Mudar status
                                                </a>
                                                @endcan
                                            </td>
                                            <td style="border-top:none;">
                                                <i>Status: 
                                                @switch($equipmentRent->status)
                                                    @case(1)<font color='orange'><b>{{'Solicitado'}}</b></font>@break
                                                    @case(2)<font color='green'><b>{{'Retirada Liberada'}}</b></font>@break
                                                    @case(3)<font color='blue'><b>{{'Devolvido'}}</b></font>@break
                                                    @case(4)<font color='red'><b>{{'Negado'}}</b></font>@break
                                                    @default Default case... 
                                                @endswitch
                                                </i>
                                            </td>
                                            <td colspan="6" style="color:red; border-top:none;"> {{$equipmentRent->reason_refuses}} </td>
                                        </tr>
                                    @endif
                                @endforeach
                            @empty
                        <div class=" well alert-warning">
                            <p>Não tem equipamentos solicitados!</p>
                        </div>
                        @endforelse
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

