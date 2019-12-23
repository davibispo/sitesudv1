@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Caravanas da Estaca {{$stake}}</b></div>

                <div class="panel-body">
                    
                    <div class="alert alert-success">
                        <p class="text-center">
                            <b>"Deus prometeu que as bênçãos do casamento, da família e da vida eterna estarão disponíveis para todos os 
                            Seus filhos que aceitarem e seguirem Seu plano de felicidade fielmente"</b>
                            <br>A Família e o Templo
                            <br><a href="https://www.lds.org.br/a-familia-e-o-templo" target="_blank">https://www.lds.org.br/a-familia-e-o-templo</a>
                            <br>"Faça do templo a sua maior meta!" - Thomas S. Monson
                        </p>
                    </div>
                    <div class="text-center">
                        <h4>Escolha uma caravana e faça sua reserva!</h4>
                        @can('caravan_index')
                            <a href="{{route('caravans.index')}}" class="btn btn-xs btn-success"><i class="fas fa-cog"></i> Administrar</a>
                        @endcan
                    </div>
                    <br>
                    <div class="well">
                        <div class="row">
                            @foreach($caravans as $caravan)

                                @php
                                    //calculo das vagas restantes
                                    $qtdPoltronas = $caravan->qtdPoltronas;
                                    $listaPrincipal = 0;
                                    foreach ($caravanUsers as $caravanUser){
                                        if($caravanUser->caravan_id == $caravan->id && $caravanUser->poltrona > 0 && $caravanUser->poltrona != 99){
                                            $listaPrincipal++;
                                        }
                                    }
                                    $vagas = $qtdPoltronas - $listaPrincipal;
                                @endphp

                                <div class="col-sm-4">
                                    <div style="padding:3%">
                                        <a class="btn btn-default btn-block" href="{{route('caravan-users.show-user', $caravan->id)}}">
                                            <b>{{ date("d-m-y", strtotime($caravan->data))}} <i class="fas fa-bus" style="color:rgb(45, 133, 67)"></i> </b>
                                                @if ($vagas == 0)
                                                    <b style="color:red">{{ $vagas }}</b> vagas<br>
                                                    @else
                                                    <b style="color:blue">{{ $vagas }}</b> vagas<br>
                                                @endif
                                            @if ($caravan->status == 1)
                                                <i style="color:rgb(45, 133, 67)">Semana</i>
                                            @endif    
                                        </a>
                                    </div>
                                </div>
                            @endforeach
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection


