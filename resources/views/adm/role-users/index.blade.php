@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Perfis e Usuários</b></div>

                <div class="panel-body">

                    <div>
                        <a href="{{route('role-users.create')}}" class="btn btn-link">
                            <i class="fa fa-plus" aria-hidden="true"></i>
                            Cadastrar Perfil a Usuário
                        </a>
                    </div>
                    <br>
                    <div class="perfil">
                        <input class="form-control" id="myInput" type="text" placeholder="Filtrar..">
                        
                        <table class="table table-striped" style="font-size:12px">
                            <thead>
                                <tr>
                                    <th>Perfil</th>
                                    <th>Usuário</th>
                                    <th>Unidade</th>
                                    <th>Remover</th>
                                </tr>
                            </thead>
                            <tbody id="myTable">
                                @foreach ($users as $u) 
                                    @foreach ($roles as $r)
                                        @foreach ($roleUsers as $ru)
                                            @if ($ru->user_id == $u->id)
                                                @if ($ru->role_id == $r->id) 
                                                <tr>
                                                    <td>{{ $r->name }}</td>
                                                    <td>{{ $u->name }} {{ $u->lastname }}</td>  
                                                    <td>{{ $u->ward }} - {{ $u->stake }}</td>  
                                                    <td>
                                                        {!! Form::open(['method'=>'DELETE', 'action'=>['RoleUserController@destroy', $ru->id], 'style'=>'display:inline']) !!}
                                                        {!! Form::submit('x', ['class'=>'btn btn-danger btn-xs']) !!}
                                                        {!! Form::close() !!}
                                                    </td>                                     
                                                </tr>
                                                @endif
                                            @endif
                                        @endforeach
                                    @endforeach                            
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

