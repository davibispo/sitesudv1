@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Indicações para servir em cargos na Estaca {!!$stake!!}</b></div>

                <div class="panel-body">
                    <div>
                        <a href="{!! route('calleds.create') !!}" class="btn btn-primary btn-xs">
                            <i class="fas fa-up"></i> Nova indicação
                        </a>
                    </div>
                    <br>
                    <div style="overflow:auto; height: 600px;">
                    <table class="table table-hover" style="font-size:12px">
                        <thead>
                            <tr>
                                <th>Chamado</th> 
                                <th>Membro indicado</th>
                                <th>Unidade</th> 
                                <th>Ofício</th>
                                <th>Indicado por</th>
                                <th>Enviado em</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($calleds as $called)
                                @foreach($users as $user)
                                    @if($user->id == $called->user_id)
                                        <tr>
                                            <td style="width:20%"><i class="fas fa-angle-right"></i> {!!$called->called!!}</td>
                                            <td style="width:20%"><b>{!!$called->member!!}</b></td>
                                            <td style="width:10%">{!!$called->ward!!}</td>
                                            <td style="width:10%">{!!$called->priesthood!!}</td>
                                            <td style="width:25%">{!!$user->name!!} {!!$user->lastname!!}</td>
                                            <td style="width:10%">{!!date('d/m/Y', strtotime($called->created_at))!!}</td>
                                            <td style="width:5%">
                                                @switch($called->status)
                                                    @case('1') <b style="color:orange">{!!'Analisando'!!}</b> @break
                                                    @case('2') <b style="color:green">{!!'Aprovado'!!}</b> @break
                                                    @case('3') <b style="color:blue">{!!'Apoiado'!!}</b> @break
                                                    @case('4') <b style="color:red">{!!'Rejeitado'!!}</b> @break
                                                    @default    
                                                @endswitch
                                            </td>
                                            <td> 
                                                @can('called_update')
                                                <a href="{!!route('calleds.edit', $called->id)!!}" data-toggle="tooltip" title="Ações">
                                                    <i class="fas fa-sign-in-alt fa-lg"></i>
                                                </a>
                                                @endcan
                                            </td>
                                        </tr>
                                        @if (isset($called->obs))
                                        <tr>   
                                            <td colspan="7" style="border-top:none;"><i>Obs: {!!$called->obs!!}</i></td>
                                        </tr>   
                                        @endif
                                        @if (isset($called->reason_reject))
                                        <tr>   
                                            <td colspan="7" style="border-top:none; color:red;"><i>{!!$called->reason_reject!!}</i></td>
                                        </tr>   
                                        @endif
                                    @endif
                                @endforeach
                            @empty
                        <div class=" well alert-warning">
                            <p>Você não tem Indicações enviadas!</p>
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

