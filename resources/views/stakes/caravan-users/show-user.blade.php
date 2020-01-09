@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Caravana da Estaca {{$stake}}</b></div>

                <div class="panel-body">
                    
                    @if ($caravan->ativo != 1 || $caravan->stake != $stake)
                        <div class="alert alert-danger">
                            <p>
                                Sem permissão para acesso!
                            </p>
                        </div>
                    @else    
                    <!-- Se o usuário for da mesma estaca e a caravana estiver ativa, então mostra a caravana -->    
                    <div class="text-center">
                        <h4>Caravana de <b>{{date('d-m-Y', strtotime($caravan->data))}}</b></h4>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                <a href="{{route('caravan-users.index')}}" class="btn btn-default btn-xs" style="float:left">
                                    <i class="fas fa-angle-left"></i> voltar
                                </a>
                                
                                @can('caravan_user_update')
                                <a href="{{route('caravan-users.show', $caravan->id)}}" class="btn btn-default btn-xs" style="float:right">
                                    <i class="fas fa-cog fa-lg" style="color:rgb(45, 133, 67)"></i> Gerenciar
                                </a>
                                @endcan
                                        
                                <div class="text-center">
                                    <a href="{{route('caravan-users.create-caravan-user', $caravan->id)}}" class="btn btn-primary btn-sm">
                                        <i class="fas fa-bus fa-lg" aria-hidden="true"></i> VAGAS
                                    </a>
                                </div>
                            </td>
                        </tr>    
                    </table>
                    
                    <div class="alert alert-xs alert-warning">
                        <b>Líder da caravana:</b> {{$caravan->leader}} - <b>Fone:</b> {{$caravan->phone}} <br>
                        <b>Obs:</b> {{$caravan->obs}}      
                    </div>
                    
                    <input class="form-control" id="myInput" type="text" placeholder="Filtrar..">
                    
                    <div class="well">
                        <p class="text-left">Lista Principal</p>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th style="width:5%">Poltrona</th> 
                                    <th style="width:70%">Membro</th> 
                                    <th style="width:25%">Unidade</th> 
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody id="myTable" style="font-size:12px">
                                    @forelse($caravanUsers as $caravanUser)
                                        @foreach ($users as $user)
                                            @if($caravanUser->caravan_id == $caravan->id && $caravanUser->user_id == $user->id && $caravanUser->status != $statusReserva && $caravanUser->status != 5)    
                                            <tr>
                                                <td>{{$caravanUser->poltrona}}</td>
                                                @if(isset($caravanUser->kid) && ($caravanUser->caravan_id == $caravan->id && $caravanUser->user_id == $user->id) && ($caravanUser->status != 5))
                                                    <td>{{$caravanUser->kid}}</i></td>
                                                @else
                                                    <td>{{$user->name}} {{$user->lastname}}</td>
                                                @endif
                                                <td>{{$user->ward}}</td>
                                                <td>
                                                    @if ($caravanUser->pagto == 1)
                                                        <i class="fas fa-circle" style="color:green"></i>
                                                        @else 
                                                        <i class="fas fa-circle" style="color:yellow"></i>
                                                    @endif  
                                                </td>
                                            </tr>
                                            @endif
                                        @endforeach
                                    @empty
                                <div class=" well alert-warning">
                                    <p>Não tem membros cadastrados nesta lista.</p>
                                </div>
                                @endforelse
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- Lista Reserva -->
                    <div class="well">
                        <p class="text-left">Lista Reserva</p>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>Membro</th> 
                                    <th>Unidade</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody style="font-size:12px">
                                    @forelse($caravanUsers as $caravanUser)
                                        @foreach ($users as $user)
                                            @if($caravanUser->caravan_id == $caravan->id && $caravanUser->user_id == $user->id && ($caravanUser->status == $statusReserva || $caravanUser->status == 5))
                                            <tr>
                                                @if(isset($caravanUser->kid))
                                                <td>{{$caravanUser->kid}}</i></td>
                                                @else
                                                <td>{{$user->name}} {{$user->lastname}}</td>
                                                @endif
                                                <td>{{$user->ward}}</td>
                                                <td>
                                                    @if ($caravanUser->pagto == 1)
                                                        <i class="fas fa-circle" style="color:green"></i>
                                                        @else 
                                                        <i class="fas fa-circle" style="color:yellow"></i>
                                                    @endif  
                                                </td>
                                            </tr>
                                            @endif
                                        @endforeach
                                    @empty
                                <div class=" well alert-warning">
                                    <p>Não tem membros cadastrados nesta lista.</p>
                                </div>
                                @endforelse
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    @endif
                </div>
            </div>
        </div> 
    </div>
</div>

@endsection


