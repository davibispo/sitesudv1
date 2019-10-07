@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Perfis e Usuários</b></div>

                <div class="panel-body">

                    {!! Form::open(['method'=>'POST', 'action'=>'RoleUserController@store']) !!}
                        <input class="form-control" id="myInput" type="text" placeholder="Filtrar..">
                        <div  style="overflow:auto; height: 110px;">
                            <table style="font-size:12px">
                                @foreach ($users as $u)
                                <tbody id="myTable">
                                    <tr>
                                        <td> {{$u->name}} {{$u->lastname}} </td>
                                        <td> Estaca: {{$u->stake}} - Ala: {{ $u->ward }} </td>
                                        <td> {!! Form::radio('user_id', $u->id) !!} </td>
                                    </tr>    
                                </tbody>
                                @endforeach
                            </table>
                        </div>
                        <select name='role_id' class="form-control" required>
                            <option value=""> -- Escolha um perfil -- </option>
                            @foreach ($roles as $role)
                                <option value="{{$role->id}}">{{$role->description}}  ({{$role->name}})</option>
                            @endforeach
                        </select>
                        <br>
                        {!! Form::submit('Adicionar Perfil ao Usuário', ['class'=>'btn btn-primary btn-sm']) !!}
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

