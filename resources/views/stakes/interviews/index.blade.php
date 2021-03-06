@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Entrevistas da Estaca {{$stake}} ou Bênção Patriarcal</b></div>

                <div class="panel-body">
                    <div>
                        <a href="{{route('interviews.create')}}" class="btn btn-primary btn-xs">
                            <i class=""></i> Solicitar uma entrevista
                        </a>
                    </div>
                    <br>
                    <input class="form-control" id="myInput" type="text" placeholder="Filtrar..">
                    <div style="overflow:auto; height: 600px;">
                    <br>
                    <table class="table table-striped table-hover" style="font-size:12px">
                        <thead>
                            <tr>
                                <th style="width:15%">Membro</th>
                                <th style="width:12%">Contato</th> 
                                <th style="width:10%">Unidade</th> 
                                <th style="width:15%">Motivo da entrevista</th>
                                <th style="width:8%">Entrevistador</th>
                                <th style="width:10%">Status</th>
                                <th style="width:5%">Solicitada</th>
                                <th style="width:15%">Marcada para</th>
                                <th style="width:15%">Local</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            @forelse($interviews as $interview)
                                @foreach($users as $user)
                                    @if($user->id == $interview->user_id)
                                        @if($interview->interview_type_id == 6)
                                        
                                        <tr>
                                            <th>
                                                @if (isset($interview->nome))
                                                    {{ $interview->nome }}
                                                    @else
                                                    {{$user->name}} {{$user->lastname}}
                                                @endif
                                            </th>
                                            <td>{{$user->phone}}</td>
                                            <td>{{$user->ward}}</td>
                                            <th>{{DB::table('interview_types')->where('ativo','1')->where('id',$interview->interview_type_id)->value('description')}}</th>
                                            <th>{{$interview->interviewer}}</th>
                                            <td>
                                                @switch($interview->status)
                                                    @case(1)<b style="color:orange">{{'Solicitada'}}</b>@break
                                                    @case(2)<b style="color:green">{{'CONFIRMADA'}}</b>@break
                                                    @case(3)<b style="color:red">{{'Cancelada'}}</b>@break
                                                    @case(4)<b style="color:blue">{{'Realizada'}}</b>@break
                                                    @default Default case... 
                                                @endswitch
                                            </td>
                                            <td>{{date('d/m/y', strtotime($interview->created_at))}}</td>
                                            <td>
                                                @if(date('Y', strtotime($interview->data)) > '2017' )
                                                    <b>{{date('d/m/y', strtotime($interview->data))}}</b> às 
                                                    <b>{{date('H:i', strtotime($interview->data))}}</b>
                                                @endif
                                            </td>
                                            <td>
                                                {{ $interview->local }}
                                            </td>
                                            <td>
                                                @can('interview_update_patriarca')
                                                <a href="{{route('interviews.edit', $interview->id)}}" data-toggle="tooltip" title="Ações">
                                                    <i class="fas fa-sign-in-alt fa-lg"></i>
                                                </a>
                                                @endcan
                                            </td>
                                        </tr>
                                        
                                        @else   
                                        <tr>
                                            <th>
                                                @if (isset($interview->nome))
                                                    {{ $interview->nome }}
                                                    @else
                                                    {{$user->name}} {{$user->lastname}}
                                                @endif
                                            </th>
                                            <td>{{$user->phone}}</td>
                                            <td>{{$user->ward}}</td>
                                            <th>{{DB::table('interview_types')->where('ativo','1')->where('id',$interview->interview_type_id)->value('description')}}</th>
                                            <th>{{$interview->interviewer}}</th>
                                            <td>
                                                @switch($interview->status)
                                                    @case(1)<b style="color:orange">{{'Solicitada'}}</b>@break
                                                    @case(2)<b style="color:green">{{'CONFIRMADA'}}</b>@break
                                                    @case(3)<b style="color:red">{{'Cancelada'}}</b>@break
                                                    @case(4)<b style="color:blue">{{'Realizada'}}</b>@break
                                                    @default Default case... 
                                                @endswitch
                                            </td>
                                            <td>{{date('d/m/y', strtotime($interview->created_at))}}</td>
                                            <td>
                                                @if(date('Y', strtotime($interview->data)) > '2017' )
                                                    <b>{{date('d/m/y', strtotime($interview->data))}}</b> às 
                                                    <b>{{date('H:i', strtotime($interview->data))}}</b>
                                                @endif
                                            </td>
                                            <td>
                                                {{ $interview->local }}
                                            </td>
                                            <td>
                                                @can('interview_update_presidencia')
                                                <a href="{{route('interviews.edit', $interview->id)}}" data-toggle="tooltip" title="Ações">
                                                    <i class="fas fa-sign-in-alt fa-lg"></i>
                                                </a>
                                                @endcan
                                            </td>
                                        </tr>
                                        
                                        @endif
                                    @endif
                                @endforeach
                            @empty
                        <div class=" well alert-warning">
                            <p>Você não tem entrevistas solicitadas!</p>
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

