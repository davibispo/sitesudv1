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
                        <a href="http://autossuficiencia.org.br/manuais/" target="_blank" class="btn btn-default">
                            <i class="fas fa-download"></i>
                            Baixar Manuais
                        </a>
                    </div>
                    <br>
                    <table class="table table-bordered" style="font-size:12px;">
                        <thead>
                            <tr>
                                <th class="text-center" style="background-color:blue; color:white;">Educação para um Emprego Melhor</th>
                                <th class="text-center" style="background-color:green; color:white;">Encontrar um Emprego Melhor</th>
                                <th class="text-center" style="background-color:blueviolet; color:white;">Finanças Pessoais</th>
                                <th class="text-center" style="background-color:red; color:white;">Iniciar e Melhorar Meu Negócio</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="text-left">
                                <td>
                                    <ol type="1">
                                        @forelse ($groupMembers as $groupMember)
                                            @foreach ($users as $user)
                                                @if (($groupMember->user_id == $user->id) && ($groupMember->grupo == 'Educação para um Emprego Melhor'))
                                                    @php $count++ @endphp
                                                        <li>
                                                            <b>{!! $user->name !!} {!! $user->lastname !!}</b> - 
                                                            @switch($groupMember->status)
                                                                @case('1')
                                                                    <font color='orange'>{!! "Solicitado" !!}</font>
                                                                    @break
                                                                @case('2')
                                                                    <font color='green'>{!! "Matriculado" !!}</font>    
                                                                    @break
                                                                @case('4')
                                                                    <font color='red'>{!! "Desistente" !!}</font>    
                                                                    @break
                                                                @case('5')
                                                                    <font color='blue'>{!! "CONCLUÍDO" !!}</font>    
                                                                    @break
                                                                @default
                                                            @endswitch
                                                            @can('self-reliance_edit') 
                                                            <a href="{!!route('self-reliances.edit', $groupMember->id)!!}" data-toggle="tooltip" title="Ações">
                                                                <i class="fas fa-sign-in-alt fa-lg"></i>
                                                            </a>
                                                            @endcan
                                                        </li>
                                                @endif
                                            @endforeach
                                        @empty
                                            <div>
                                                <p>Não há membros cadastrados neste grupo!</p>
                                            </div>
                                        @endforelse
                                    </ol>
                                </td>
                                <td>
                                    <ol type="1">
                                        @forelse ($groupMembers as $groupMember)
                                            @foreach ($users as $user)
                                                @if (($groupMember->user_id == $user->id) && ($groupMember->grupo == 'Encontrar um Emprego Melhor'))
                                                    @php $count++ @endphp
                                                        <li>
                                                            <b>{!! $user->name !!} {!! $user->lastname !!}</b> - 
                                                            @switch($groupMember->status)
                                                                @case('1')
                                                                    <font color='orange'>{!! "Solicitado" !!}</font>
                                                                    @break
                                                                @case('2')
                                                                    <font color='green'>{!! "Matriculado" !!}</font> 
                                                                    @break
                                                                @case('4')
                                                                    <font color='red'>{!! "Desistente" !!}</font>    
                                                                    @break
                                                                @case('5')
                                                                    <font color='blue'>{!! "CONCLUÍDO" !!}</font>    
                                                                    @break
                                                                @default
                                                            @endswitch
                                                            @can('self-reliance_edit')  
                                                            <a href="{!!route('self-reliances.edit', $groupMember->id)!!}" data-toggle="tooltip" title="Ações">
                                                                <i class="fas fa-sign-in-alt fa-lg"></i>
                                                            </a>
                                                            @endcan
                                                        </li>
                                                @endif
                                            @endforeach
                                        @empty
                                            <div>
                                                <p>Não há membros cadastrados neste grupo!</p>
                                            </div>
                                        @endforelse
                                    </ol>
                                </td>
                                <td>
                                    <ol type="1">
                                        @forelse ($groupMembers as $groupMember)
                                            @foreach ($users as $user)
                                                @if (($groupMember->user_id == $user->id) && ($groupMember->grupo == 'Finanças Pessoais'))
                                                    @php $count++ @endphp
                                                        <li>
                                                            <b>{!! $user->name !!} {!! $user->lastname !!}</b> - 
                                                            @switch($groupMember->status)
                                                                @case('1')
                                                                    <font color='orange'>{!! "Solicitado" !!}</font>
                                                                    @break
                                                                @case('2')
                                                                    <font color='green'>{!! "Matriculado" !!}</font>    
                                                                    @break
                                                                @case('4')
                                                                    <font color='red'>{!! "Desistente" !!}</font>    
                                                                    @break
                                                                @case('5')
                                                                    <font color='blue'>{!! "CONCLUÍDO" !!}</font>    
                                                                    @break
                                                                @default
                                                            @endswitch
                                                            @can('self-reliance_edit')  
                                                            <a href="{!!route('self-reliances.edit', $groupMember->id)!!}" data-toggle="tooltip" title="Ações">
                                                                <i class="fas fa-sign-in-alt fa-lg"></i>
                                                            </a>
                                                            @endcan
                                                        </li>
                                                @endif
                                            @endforeach
                                        @empty
                                            <div>
                                                <p>Não há membros cadastrados neste grupo!</p>
                                            </div>
                                        @endforelse
                                    </ol>
                                </td>
                                <td>
                                    <ol type="1">
                                        @forelse ($groupMembers as $groupMember)
                                            @foreach ($users as $user)
                                                @if (($groupMember->user_id == $user->id) && ($groupMember->grupo == 'Iniciar e Melhorar Meu Negócio'))
                                                    @php $count++ @endphp
                                                        <li>
                                                            <b>{!! $user->name !!} {!! $user->lastname !!}</b> - 
                                                            @switch($groupMember->status)
                                                                @case('1')
                                                                    <font color='orange'>{!! "Solicitado" !!}</font>
                                                                    @break
                                                                @case('2')
                                                                    <font color='green'>{!! "Matriculado" !!}</font>  
                                                                    @break
                                                                @case('4')
                                                                    <font color='red'>{!! "Desistente" !!}</font>    
                                                                    @break
                                                                @case('5')
                                                                    <font color='blue'>{!! "CONCLUÍDO" !!}</font>    
                                                                    @break
                                                                @default
                                                            @endswitch
                                                            @can('self-reliance_edit')  
                                                            <a href="{!!route('self-reliances.edit', $groupMember->id)!!}" data-toggle="tooltip" title="Ações">
                                                                <i class="fas fa-sign-in-alt fa-lg"></i>
                                                            </a>
                                                            @endcan
                                                        </li>
                                                @endif
                                            @endforeach
                                        @empty
                                            <div>
                                                <p>Não há membros cadastrados neste grupo!</p>
                                            </div>
                                        @endforelse
                                    </ol>
                                </td>
                                
                                
                            </tr>
                                    
                        </tbody>
                    </table>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

