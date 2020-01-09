@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Grupos de Autossuficiência de {{strtoupper($ward)}}</b></div>
            <!--<div class="panel-heading">Inscrições para Cursos <b>ENGLISH CONNECT</b></div>-->

                <div class="panel-body">
                    <div class="text-center">    
                        <a href="{!!route('self-reliances.create')!!}" class="btn btn-primary btn-xs">
                            Inscrições
                        </a>
                        <a href="http://autossuficiencia.org.br/manuais/" target="_blank" class="btn btn-default btn-xs">
                            <i class="fas fa-book"></i>
                            Manuais e site
                        </a>
                    </div>
                    <br>
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
                                @can('self-reliance_edit')
                                <th>Contato</th>
                                @endcan
                                <th>Curso</th>
                                <th>Unidade</th>
                                <th>Status</th>
                                @can('self-reliance_edit')
                                <th></th>
                                @endcan
                            </tr>
                        </thead>
                        <tbody id="myTable">
                                @forelse ($groupMembers as $groupMember)
                                    @foreach ($users as $user)
                                        @if ($groupMember->user_id == $user->id)
                                            @php $count++ @endphp
                                                <tr>
                                                    <td>{!! $user->name !!} {!! $user->lastname !!}</td>
                                                    @can('self-reliance_edit')
                                                    <td>{!! $user->phone !!} - {!! $user->email !!}</td>
                                                    @endcan
                                                    <td>{!! $groupMember->grupo !!}</td>
                                                    <td>{!! $user->ward !!}</td>
                                                    <td>
                                                    @switch($groupMember->status)
                                                        @case('1')
                                                            <b style="color:orange">{!! "Solicitado" !!}</b>
                                                            @break
                                                        @case('2')
                                                            <b style="color:green">{!! "Matriculado" !!}</b>    
                                                            @break
                                                        @case('4')
                                                            <b style="color:red">{!! "Desistente" !!}</b>    
                                                            @break
                                                        @case('5')
                                                            <b style="color:blue">{!! "CONCLUÍDO" !!}</b>    
                                                            @break
                                                        @default
                                                    @endswitch
                                                    </td>
                                                    @can('self-reliance_edit') 
                                                    <td>
                                                        <a href="{!!route('self-reliances.edit', $groupMember->id)!!}" data-toggle="tooltip" title="Mudar Status">
                                                            <i class="fas fa-sign-in-alt fa-lg"></i>
                                                        </a>
                                                    </td>
                                                    @endcan
                                                </tr>
                                        @endif
                                    @endforeach
                                @empty
                                    <div class="alert alert-warning">
                                        <p>Não há membros inscritos até o momento!</p>
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


