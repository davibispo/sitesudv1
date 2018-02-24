@extends('layouts.print-version')

@section('content')

<div class="container">

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading text-center"><b>Agenda da Reunião Sacramental - {{strtoupper($ward)}}</b> - Estaca {{$stake}}</div>

                <div class="panel-body">
                    
                        <a onclick="javascript:window.print();" class="btn btn-link btn-xs">
                            <i class="fas fa-print"></i>
                            <b>Imprimir</b>
                        </a>
                    
                    <!--Cabeçalho-->
                    <div class="well well-xs">
                    <table class="table table-hover" style="font-size:12px">
                    
                        <tr>
                            <td><b>Data:</b> {{date('d/m/y', strtotime($sacramentalMeeting->date))}}</td>
                            <td><b>Presidida:</b> {{$sacramentalMeeting->presidida}}</td>
                            <td><b>Dirigida:</b> {{$sacramentalMeeting->dirigida}}</td>
                            <td><b>Freq.:</b> {{$sacramentalMeeting->frequencia}}</td>
                        </tr>
                    </table>    

                    <!--Reconhecimentos-->
                    <table class="table table-hover" style="font-size:12px">
                        <tr>
                            <td><b>Reconhecimentos:</b> 
                                {{$sacramentalMeeting->rec_nome1}} - {{$sacramentalMeeting->rec_cham1}}  
                                {{$sacramentalMeeting->rec_nome2}} - {{$sacramentalMeeting->rec_cham2}}  
                                {{$sacramentalMeeting->rec_nome3}} - {{$sacramentalMeeting->rec_cham3}}  
                                {{$sacramentalMeeting->rec_nome4}} - {{$sacramentalMeeting->rec_cham4}}
                            </td>
                        </tr>
                    </table>

                    <!--Anuncios-->
                    <table class="table table-hover" style="font-size:12px">
                        <tr>
                            <td><b>Anúncios</b></td>
                            <td><b>Data</b></td>
                            <td><b>Horário</b></td>
                            <td><b>Local</b></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->anun_1}}</td>
                            <td>{{$sacramentalMeeting->data_anun_1}}</td>
                            <td>{{$sacramentalMeeting->hora_anun_1}}</td>
                            <td>{{$sacramentalMeeting->local_anun_1}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->anun_2}}</td>
                            <td>{{$sacramentalMeeting->data_anun_2}}</td>
                            <td>{{$sacramentalMeeting->hora_anun_2}}</td>
                            <td>{{$sacramentalMeeting->local_anun_2}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->anun_3}}</td>
                            <td>{{$sacramentalMeeting->data_anun_3}}</td>
                            <td>{{$sacramentalMeeting->hora_anun_3}}</td>
                            <td>{{$sacramentalMeeting->local_anun_3}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->anun_4}}</td>
                            <td>{{$sacramentalMeeting->data_anun_4}}</td>
                            <td>{{$sacramentalMeeting->hora_anun_4}}</td>
                            <td>{{$sacramentalMeeting->local_anun_4}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->anun_5}}</td>
                            <td>{{$sacramentalMeeting->data_anun_5}}</td>
                            <td>{{$sacramentalMeeting->hora_anun_5}}</td>
                            <td>{{$sacramentalMeeting->local_anun_5}}</td>
                        </tr>
                    </table>
              
                    <!--Hino 1, Regente, pianista, oração-->
                    <table class="table table-hover" style="font-size:12px">
                        <tr>
                            <td><b>Hino de abertura</b></td>
                            <td><b>Regente</b> </td>
                            <td><b>Pianista</b> </td>
                            <td><b>Oração</b> </td>
                        </tr>
                        <tr>
                            <td>
                                @foreach ($hinos as $hino)
                                    @if ($hino->num == $sacramentalMeeting->hino1)
                                        {{$hino->num}} - {{$hino->nome}} 
                                    @endif
                                @endforeach
                            </td>
                            <td>{{$sacramentalMeeting->regente}}</td>
                            <td>{{$sacramentalMeeting->pianista}}</td>
                            <td>{{$sacramentalMeeting->oracao1}}</td>
                        </tr>
                    </table>
                    </div>

                    <!--Bênção de crianças-->
                    <div class="well well-xs">
                    
                    <table class="table table-hover" style="font-size:12px">
                        <tr>
                            <td><b>Bênção de Criança</b></td>
                            <td><b>Abençoador</b></td>
                            <td><b>Ofício no sacerdócio</b></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->bencao1}}</td>
                            <td>{{$sacramentalMeeting->abencoador1}}</td>
                            <td>{{$sacramentalMeeting->oficio1}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->bencao2}}</td>
                            <td>{{$sacramentalMeeting->abencoador2}}</td>
                            <td>{{$sacramentalMeeting->oficio2}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->bencao3}}</td>
                            <td>{{$sacramentalMeeting->abencoador3}}</td>
                            <td>{{$sacramentalMeeting->oficio3}}</td>   
                        </tr>
                    </table>

                    <!--Confirmação de conversos-->
                    <table class="table table-hover" style="font-size:12px">
                        <tr>
                            <td><b>Confirmações</b></td>
                            <td><b>Confirmador</b></td>
                            <td><b>Ofício no sacerdócio</b></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->converso1}}</td>
                            <td>{{$sacramentalMeeting->confirmador1}}</td>
                            <td>{{$sacramentalMeeting->oficio4}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->converso2}}</td>
                            <td>{{$sacramentalMeeting->confirmador2}}</td>
                            <td>{{$sacramentalMeeting->oficio5}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->converso3}}</td>
                            <td>{{$sacramentalMeeting->confirmador3}}</td>
                            <td>{{$sacramentalMeeting->oficio6}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->converso4}}</td>
                            <td>{{$sacramentalMeeting->confirmador4}}</td>
                            <td>{{$sacramentalMeeting->oficio7}}</td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->converso5}}</td>
                            <td>{{$sacramentalMeeting->confirmador5}}</td>
                            <td>{{$sacramentalMeeting->oficio8}}</td>
                        </tr>
                    </table>

                    <!--Desobrigações-->    
                    <table class="table table-hover" style="font-size:12px"> 
                        <tr>
                            <td><b>Desobrigações</b></td>
                            <td><b>Chamado</b></td>
                            <td></td>
                            <td></td>
                        </tr>  
                        <tr>
                            <td>{{$sacramentalMeeting->desob_nome1}}</td>
                            <td>{{$sacramentalMeeting->desob_cham1}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->desob_nome2}}</td>
                            <td>{{$sacramentalMeeting->desob_cham2}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->desob_nome3}}</td>
                            <td>{{$sacramentalMeeting->desob_cham3}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->desob_nome4}}</td>
                            <td>{{$sacramentalMeeting->desob_cham4}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->desob_nome5}}</td>
                            <td>{{$sacramentalMeeting->desob_cham5}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->desob_nome6}}</td>
                            <td>{{$sacramentalMeeting->desob_cham6}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>

                    <!--Apoios-->
                    <table class="table table-hover" style="font-size:12px">
                        <tr>
                            <td><b>Apoios</b></td>
                            <td><b>Chamado</b></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->apoio_nome1}}</td>
                            <td>{{$sacramentalMeeting->apoio_cham1}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->apoio_nome2}}</td>
                            <td>{{$sacramentalMeeting->apoio_cham2}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->apoio_nome3}}</td>
                            <td>{{$sacramentalMeeting->apoio_cham3}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->apoio_nome4}}</td>
                            <td>{{$sacramentalMeeting->apoio_cham4}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->apoio_nome5}}</td>
                            <td>{{$sacramentalMeeting->apoio_cham5}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->apoio_nome6}}</td>
                            <td>{{$sacramentalMeeting->apoio_cham6}}</td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>

                    <!-- Sacramento -->
                    <table class="table table-hover" style="font-size:12px">
                        <tr>
                            @foreach ($hinos as $hino)
                                @if ($hino->num == $sacramentalMeeting->hino2)
                                    <td><b>Hino sacramental:</b> {{$hino->num}} - {{$hino->nome}}</td> 
                                @endif
                            @endforeach
                        </tr>
                    </table>

                    <!-- Sacerdócio aaronico -->
                    <table class="table table-hover" style="font-size:12px">
                        <tr>
                            <td><b>Abençoando:</b> {{$sacramentalMeeting->sacerdote1}}, {{$sacramentalMeeting->sacerdote2}}</td>
                            <td><b>Distribuindo:</b> 
                                {{$sacramentalMeeting->diacono1}}, 
                                {{$sacramentalMeeting->diacono2}}, 
                                {{$sacramentalMeeting->diacono3}}, 
                                {{$sacramentalMeeting->diacono4}}
                            </td>
                        </tr>
                    </table>

                    </div>

                    <!-- Discursantes, hino especial e encerramento -->
                    <div class="well well-xs">
                    <table class="table table-hover" style="font-size:12px">
                        <tr>
                            <td><b>1º Discursante:</b> {{$sacramentalMeeting->discursante1}} - ({{$sacramentalMeeting->tempo1}} min)</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><b>2º Discursante:</b> {{$sacramentalMeeting->discursante2}} - ({{$sacramentalMeeting->tempo2}} min)</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            @foreach ($hinos as $hino)
                                @if ($hino->num == $sacramentalMeeting->hino3)
                                    <td><b>Hino especial:</b> {{$hino->num}} - {{$hino->nome}}</td> 
                                @endif
                            @endforeach
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                    </div>
                    <div class="well well-xs">
                        <table class="table table-hover" style="font-size:12px">
                        <tr>
                            <td><b>3º Discursante</b> </td>
                            <td><b>Hino</b></td>
                            
                            <td><b>Oração</b></td>
                        </tr>
                        <tr>
                            <td>{{$sacramentalMeeting->discursante3}} - ({{$sacramentalMeeting->tempo3}} min)</td>
                            <td>
                                @foreach ($hinos as $hino)
                                    @if ($hino->num == $sacramentalMeeting->hino4)
                                        {{$hino->num}} - {{$hino->nome}} 
                                    @endif
                                @endforeach
                            </td>
                            <td>{{$sacramentalMeeting->oracao2}}</td>
                        </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

</div>

@endsection