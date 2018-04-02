@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Entrevistas da Estaca {{$stake}} ou Bênção Patriarcal</b></div>

                <div class="panel-body">
                    <div>
                        <a href="{{route('interviews.create')}}" class="btn btn-primary btn-sm">
                            <i class="fas fa-plus"></i> 
                            Solicitar
                        </a>
                    </div>
                    <br>
                    <table class="table table-striped table-hover" style="font-size:12px">
                        <thead>
                            <tr>
                                <th>Membro</th>
                                @can('interview_update')
                                <th>Telefone</th> 
                                <th>Unidade</th> 
                                <th>Motivo da entrevista</th>
                                @endcan
                                <th>Entrevistador</th>
                                <th>Status</th>
                                <th>Solicitada em</th>
                                <th>Marcada para</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($interviews as $interview)
                                @foreach($users as $user)
                                    @if($user->id == $interview->user_id)
                                        @if($interview->interview_type_id == 5)
                                        
                                        <tr>
                                            <td>{{$user->name}} {{$user->lastname}}</td>
                                            @can('interview_update')
                                            <td>{{$user->phone}}</td>
                                            <td>{{$user->ward}}</td>
                                            <td>{{DB::table('interview_types')->where('ativo','1')->where('id',$interview->interview_type_id)->value('description')}}</td>
                                            @endcan
                                            <td>{{$interview->interviewer}}</td>
                                            <td>
                                                @switch($interview->status)
                                                    @case(1)<font color='orange'>{{'Solicitada'}}</font>@break
                                                    @case(2)<font color='green'><b>{{'CONFIRMADA'}}</b></font>@break
                                                    @case(3)<font color='red'>{{'Cancelada'}}</font>@break
                                                    @case(4)<font color='blue'>{{'Realizada'}}</font>@break
                                                    @default Default case... 
                                                @endswitch
                                            </td>
                                            <td>{{date('d/m/Y', strtotime($interview->created_at))}}</td>
                                            <td>
                                                @if(date('Y', strtotime($interview->data)) > '2017' )
                                                    <b>{{date('d/m/y', strtotime($interview->data))}}</b> às 
                                                    <b>{{date('H:i', strtotime($interview->data))}}</b>
                                                @endif
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
                                            <td>{{$user->name}} {{$user->lastname}}</td>
                                            @can('interview_update')
                                            <td>{{$user->phone}}</td>
                                            <td>{{$user->ward}}</td>
                                            <td>{{DB::table('interview_types')->where('ativo','1')->where('id',$interview->interview_type_id)->value('description')}}</td>
                                            @endcan
                                            <td>{{$interview->interviewer}}</td>
                                            <td>
                                                @switch($interview->status)
                                                    @case(1)<font color='orange'>{{'Solicitada'}}</font>@break
                                                    @case(2)<font color='green'><b>{{'CONFIRMADA'}}</b></font>@break
                                                    @case(3)<font color='red'>{{'Cancelada'}}</font>@break
                                                    @case(4)<font color='blue'>{{'Realizada'}}</font>@break
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

