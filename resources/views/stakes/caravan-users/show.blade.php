@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Caravana da Estaca {{$stake}}</b></div>

                <div class="panel-body">
                    <div class="text-center">
                        <h4><i class="fas fa-bus"></i> Caravana de <b>{{date('d-m-Y', strtotime($caravan->data))}}</b></h4>
                    </div>
                    <table class="table">
                        <tr>
                            <td>
                                <div class="text-left">
                                    <a href="{{route('caravan-users.index')}}" class="btn btn-default btn-xs">
                                        <i class="fas fa-angle-left"></i> voltar
                                    </a>
                                </div>
                            </td>
                            <td>
                                <div class="text-right">
                                    @can('caravan_user_update')
                                    <a href="{{route('caravan-users.show-print', $caravan->id)}}" target="_blank" class="btn btn-default btn-xs">
                                        <i class="fas fa-print fa-lg"></i> Versão impressão
                                    </a>
                                    @endcan
                                </div>
                            </td>
                        </tr>    
                    </table>
                    
                    <div class="well well-xs">
                        <table class="table table-bordered" style="font-size:12px; background-color:white">
                            <tr class="text-center">
                                <td colspan="3"><b>Líder da caravana:</b> {{$caravan->leader}} - <b>Telefone:</b> {{$caravan->phone}}</td>
                            </tr>
                            <tr>
                                <td>Membros na Lista Principal: <b>{{$listaPrincipal}}</td>
                                <td>Total de membros cadastrados: <b>{{$totalCadastrados}}</b></td>
                                <td>Valor da caravana por membro:<b> R$ {{number_format($caravanPrice, 2, ',', ' ')}}</b></td>
                            </tr>
                            <tr>
                                <td>Membros na Lista Reserva: <b>{{$listaReserva}}</b></td>
                                <td>Vagas restantes: 
                                    @php
                                        //calculo das vagas restantes
                                        $qtdPoltronas = $caravan->qtdPoltronas;
                                        $listaPrincipal = 0;
                                        foreach ($caravanUsers as $caravanUser){
                                            if($caravanUser->caravan_id == $caravan->id && ($caravanUser->poltrona > 0 && $caravanUser->poltrona != 99)){
                                                $listaPrincipal++;
                                            }
                                        }
                                        $vagas = $qtdPoltronas - $listaPrincipal;
                                    @endphp
                                    <b>{{$vagas}}</b>
                                </td>
                                <td>
                                    Valor do aluguel do ônibus: 
                                    <b>R$ {{number_format($caravan->bus, 2, ',', ' ')}}</b> 
                                    | 
                                    Valor da pernoite: <b>R$ {{number_format($caravan->accommodation, 2, ',', ' ')}}</b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="text-center">
                                    <i><b>Observações</b><br>{{$caravan->obs}}</i>
                                </td>
                            </tr>
                        </table>
                    </div>

                    @can('caravan_user_update')
                    <div class="well">
                        <p class="text-left">Lista Principal</p>
                        <table class="table table-striped table-hover" style="font-size:12px">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Poltrona</th> 
                                    <th>Membros</th> 
                                    <th>Pagto</th> 
                                    <th>RG</th> 
                                    <th>Idade</th> 
                                    <th>Contato</th> 
                                    <th>Unidade</th> 
                                    <th>Cadastro</th> 
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($caravanUsers as $caravanUser)
                                @foreach ($users as $user)
                                @if($caravanUser->caravan_id == $caravan->id && $caravanUser->user_id == $user->id && $caravanUser->status != $statusReserva && $caravanUser->status != 5)
                                <tr>
                                    <td>
                                        {!! Form::model($caravanUser,['method'=>'PATCH','action'=>['CaravanUserController@update',$caravanUser->id]]) !!}
                                            {!! Form::hidden('user_id', $caravanUser->user_id) !!}
                                            {!! Form::hidden('caravan_id', $caravanUser->caravan_id) !!}
                                            {!! Form::hidden('kid', $caravanUser->kid) !!}
                                            {!! Form::hidden('kid_age', $caravanUser->kid_age) !!}
                                            {!! Form::hidden('kid_doc', $caravanUser->kid_doc) !!}
                                            {!! Form::hidden('status', '1') !!}
                                            {!! Form::number('poltrona', null, ['min'=>'1','max'=>'50','class'=>'form-control']) !!}
                                            {!! Form::submit('Modificar',['class'=>'btn btn-warning btn-xs']) !!} 
                                        {!! Form::close() !!}
                                    </td>
                                    <td>{{$caravanUser->poltrona}}</td>
                                    @if(isset($caravanUser->kid) && $caravanUser->user_id == $user->id && ($caravanUser->status != $statusReserva || $caravanUser->status == 5))
                                        <td>{{$caravanUser->kid}}</td>
                                        <td>
                                            @if ($caravanUser->pagto == 1)
                                                <a href="{{ route('caravan-users.pagto', $caravanUser->id) }}"><i class="fas fa-toggle-on" style="color:green"></i></a>
                                            @else
                                                <a href="{{ route('caravan-users.pagto', $caravanUser->id) }}"><i class="fas fa-toggle-off" style="color:red"></i></a>
                                            @endif
                                        </td>
                                        <td>{{$caravanUser->kid_doc}}</td>
                                        <td>{{$caravanUser->kid_age}}</td>
                                    @else
                                        <td>{{$user->name}} {{$user->lastname}}</td>
                                        <td>
                                            @if ($caravanUser->pagto == 1)
                                                <a href="{{ route('caravan-users.pagto', $caravanUser->id) }}"><i class="fas fa-toggle-on" style="color:green"></i></a>
                                            @else
                                                <a href="{{ route('caravan-users.pagto', $caravanUser->id) }}"><i class="fas fa-toggle-off" style="color:red"></i></a>
                                            @endif
                                        </td>
                                        <td>{{$user->rg}} {{$user->orgao_exp}}</td>
                                        <td>
                                            @php
                                            $dataNasc = $user->dt_nasc;
                                            $anoAtual = date('Y');
                                            $mesAtual = date('m');
                                            $anoNasc = date('Y', strtotime($dataNasc));
                                            $mesNasc = date('m', strtotime($dataNasc));

                                            $idade = $anoAtual - $anoNasc;

                                            if ($mesNasc >= $mesAtual) {
                                            $idade --;
                                            } else {
                                            $idade ++;
                                            }
                                            @endphp
                                            {{$idade}}
                                        </td>
                                    @endif
                                    <td>{{$user->phone}}</td>
                                    <td>{{$user->ward}}</td>
                                    <td>{{ date('d/m-H:i', strtotime($caravanUser->created_at))}}</td>
                                    <td>
                                        {!! Form::open(['method'=>'DELETE', 'action'=>['CaravanUserController@destroy', $caravanUser->id], 'style'=>'display:inline']) !!}
                                        {!! Form::submit('X',['class'=>'btn btn-danger btn-xs', 'data-toggle'=>'tooltip', 'title'=>'Excluir']) !!}
                                        {!! Form::close() !!}
                                    </td>
                                </tr>
                                @endif
                                @endforeach
                                @empty
                            <div class=" well alert-warning">
                                <p>Não tem membros cadastrados nesta lista.</p>
                            </div>
                            @endforelse
                            </tbody>
                        </table>
                    </div>

                    <!-- Lista Reserva -->
                    <div class="well">
                        <p class="text-left">Lista Reserva</p>
                        <table class="table table-striped table-hover" style="font-size:12px">
                            <thead>
                                <tr>
                                    <th>Poltrona</th>
                                    <th>Membros</th> 
                                    <th>Pagto</th> 
                                    <th>RG</th> 
                                    <th>Idade</th> 
                                    <th>Telefone</th> 
                                    <th>Unidade</th> 
                                    <th>Cadastro</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($caravanUsers as $caravanUser)
                                @foreach ($users as $user)
                                @if($caravanUser->caravan_id == $caravan->id && $caravanUser->user_id == $user->id && ($caravanUser->status == $statusReserva || $caravanUser->status == 5))
                                <tr>
                                    <td>
                                        {!! Form::model($caravanUser,['method'=>'PATCH','action'=>['CaravanUserController@update',$caravanUser->id]]) !!}
                                            {!! Form::hidden('user_id', $caravanUser->user_id) !!}
                                            {!! Form::hidden('caravan_id', $caravanUser->caravan_id) !!}
                                            {!! Form::hidden('kid', $caravanUser->kid) !!}
                                            {!! Form::hidden('kid_age', $caravanUser->kid_age) !!}
                                            {!! Form::hidden('kid_doc', $caravanUser->kid_doc) !!}
                                            {!! Form::hidden('status', '1') !!}
                                            <div class="col-sm-6">
                                            {!! Form::number('poltrona', null, ['min'=>'1','max'=>'50','class'=>'form-control']) !!}
                                            </div>
                                            {!! Form::submit('Modificar',['class'=>'btn btn-warning btn-xs']) !!}
                                        {!! Form::close() !!}
                                    </td>
                                    @if(isset($caravanUser->kid))
                                        <td>{{$caravanUser->kid}}</i></td>
                                        <td>{{$caravanUser->kid_doc}}</td>
                                    @else
                                        <td>{{$user->name}} {{$user->lastname}}</td>
                                        <td>
                                            @if ($caravanUser->pagto == 1)
                                                <a href="{{ route('caravan-users.pagto', $caravanUser->id) }}"><i class="fas fa-toggle-on" style="color:green"></i></a>
                                            @else
                                                <a href="{{ route('caravan-users.pagto', $caravanUser->id) }}"><i class="fas fa-toggle-off" style="color:red"></i></a>
                                            @endif
                                        </td>
                                        <td>{{$user->rg}} {{$user->orgao_exp}}</td>
                                    @endif
                                    <td>
                                        @php
                                            $dataNasc = $user->dt_nasc;
                                            $anoAtual = date('Y');
                                            $mesAtual = date('m');
                                            $anoNasc = date('Y', strtotime($dataNasc));
                                            $mesNasc = date('m', strtotime($dataNasc));

                                            $idade = $anoAtual - $anoNasc;

                                            if ($mesNasc >= $mesAtual) {
                                                $idade --;
                                            } else {
                                                $idade ++;
                                            }
                                        @endphp
                                        {{$idade}}
                                    </td>
                                    <td>{{$user->phone}}</td>
                                    <td>{{$user->ward}}</td>
                                    <td>{{ date('d/m H:i', strtotime($caravanUser->created_at))}}</td>
                                    <td>
                                        {!! Form::open(['method'=>'DELETE', 'action'=>['CaravanUserController@destroy', $caravanUser->id], 'style'=>'display:inline']) !!}
                                        {!! Form::submit('X',['class'=>'btn btn-danger btn-xs','data-toggle'=>'tooltip', 'title'=>'Excluir']) !!}
                                        {!! Form::close() !!}
                                    </td>
                                </tr>
                                @endif
                                @endforeach
                                @empty
                            <div class=" well alert-warning">
                                <p>Não tem membros cadastrados nesta lista.</p>
                            </div>
                            @endforelse
                            </tbody>
                        </table>
                    </div>
                    @endcan
                </div>
            </div>
        </div> 
    </div>
</div>

@endsection


