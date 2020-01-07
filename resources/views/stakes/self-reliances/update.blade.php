@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Mudar Status de inscrição</b></div>

                <div class="panel-body">
                    
                    <table class="table" style="font-size:12px;">
                        <tbody>
                            @foreach ($users as $user)
                                @if ($user->id == $groupMember->user_id)
                                    <tr>
                                        <th class="text-center">Nome</th>
                                        <td colspan="4">{!! $user->name !!} {!! $user->lastname !!}</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center">Telefone</th>
                                        <td colspan="4">{!! $user->phone !!}</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center">E-mail</th>
                                        <td colspan="4">{!! $user->email !!}</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center">Curso escolhido</th>
                                        <td colspan="4">{!! $groupMember->grupo !!}</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center">Unidade</th>
                                        <td colspan="4">{!! $groupMember->ward !!}</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center">Status</th>
                                        <td colspan="4">
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
                                    </tr>
                                    <tr>
                                        <th class="text-center">Ações</th>
                                        <td class="text-left">
                                            <div class="form-group">    
                                                {!! Form::model($groupMember,['method'=>'PATCH', 'action'=>['SelfRelianceController@update', $groupMember->id], 'class'=>'form-inline']) !!}
                                                    {!! Form::hidden('status', '2') !!}
                                                    {!! Form::submit('Matricular', ['class'=>'btn btn-success btn-xs']) !!}
                                                {!! Form::close() !!}
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">    
                                                {!! Form::model($groupMember,['method'=>'PATCH', 'action'=>['SelfRelianceController@update', $groupMember->id], 'class'=>'form-inline']) !!}
                                                    {!! Form::hidden('status', '4') !!}
                                                    {!! Form::submit('Desistiu', ['class'=>'btn btn-danger btn-xs']) !!}
                                                {!! Form::close() !!}
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">    
                                                {!! Form::model($groupMember,['method'=>'PATCH', 'action'=>['SelfRelianceController@update', $groupMember->id], 'class'=>'form-inline']) !!}
                                                    {!! Form::hidden('status', '5') !!}
                                                    {!! Form::submit('Concluiu', ['class'=>'btn btn-primary btn-xs']) !!}
                                                {!! Form::close() !!}
                                            </div>
                                        </td>
                                        <td>    
                                            <div class="form-group">
                                                {!! Form::open(['method'=>'DELETE', 'action'=>['SelfRelianceController@destroy', $groupMember->id], 'style'=>'display:inline']) !!}
                                                    {!! Form::submit('Excluir', ['class'=>'btn btn-default btn-xs']) !!}
                                                {!! Form::close() !!}
                                            </div>
                                        </td>
                                    </tr>
                                @endif
                            @endforeach      
                        </tbody>           
                    </table>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


