@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Indicações de chamados para Estaca {{$stake}}</b></div>

                <div class="panel-body">
                    
                    <table class="table table-striped table-hover" style="font-size:12px">
                        <thead>
                            <tr>
                                <th>Chamado</th> 
                                <th>Membro</th>
                                <th>Unidade</th> 
                                <th>Ofício</th>
                                <th>Observações</th>
                                <th>Indicado por</th>
                                <th>Enviado em</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($calleds as $called)
                                @foreach($users as $user)
                                    @if($user->id == $called->user_id)
                                        <tr>
                                            <td><b>{{$called->called}}</b></td>
                                            <td><b>{{$called->member}}</b></td>
                                            <td>{{$called->ward}}</td>
                                            <td>{{$called->priesthood}}</td>
                                            <td>{{$called->obs}}</td>
                                            <td>{{$user->name}}</td>
                                            <td>{{date('d/m/Y', strtotime($called->created_at))}}</td>
                                            <td>
                                                {!! Form::open(['method'=>'DELETE', 'action'=>['CalledController@destroy', $called->id], 'style'=>'display:inline']) !!}
                                                    {!! Form::submit('x', ['class'=>'btn btn-danger btn-xs', 'data-toggle'=>'tooltip', 'title'=>'Excluir']) !!}
                                                {!! Form::close() !!}
                                            </td>
                                        </tr>   
                                    @endif
                                @endforeach
                            @empty
                        <div class=" well alert-warning">
                            <p>Não tem Indicações enviadas!</p>
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

