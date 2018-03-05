@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Perfis e Usuários</b></div>

                <div class="panel-body">

                    <div>
                        <a href="{{route('role-users.create')}}" class="btn btn-info">
                            <i class="fa fa-plus" aria-hidden="true"></i>
                            Cadastrar Perfil a Usuário
                        </a>
                    </div>
                    <br>
                    <div class="perfil">
                        <table class="table table-striped" style="font-size:12px">
                            <thead>
                                <tr>
                                    <th>Perfil</th>
                                    <th>Usuário</th>
                                    <th>Descrição do Perfil</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($roleUsers as $roleUser)
                                @foreach($roles as $role)
                                    @foreach($users as $user)
                                        @if ($roleUser->role_id == $role->id && $roleUser->user_id == $user->id)
                                        <tr>
                                            <td>{{$role->name}}</td>
                                            <td>{{$user->name}} {{$user->lastname}}</td>
                                            <td>{{$role->description}}</td>
                                            <td>
                                                {!! Form::open(['method'=>'DELETE', 'action'=>['RoleUserController@destroy', $roleUser->id], 'style'=>'display:inline']) !!}
                                                    {!! Form::submit('x', ['class'=>'btn btn-danger btn-xs','data-toggle'=>'tooltip', 'title'=>'Remover perfil de usuário']) !!}
                                                {!! Form::close() !!}
                                            </td>
                                        </tr>
                                        @endif
                                    @endforeach
                                @endforeach
                                @empty
                            <div class=" well alert-warning">
                                <p>Não tem usuários cadastrados em perfis!</p>
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

