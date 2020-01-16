@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading text-center"><b>Agenda da Reunião Sacramental<br>{{strtoupper($ward)}}</b><br>Estaca {{$stake}}</div>

                <div class="panel-body">
                    <div class="text-left">
                        <a href="{{route('sacramental-meetings.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>
                    </div>
                    <br>
                    {!! Form::open(['method'=>'POST','action'=>'SacramentalMeetingController@store','class'=>'form-horizontal']) !!}
                    <table class="table table-hover" style="font-size:12px">
                        <tbody class="well well-xs"> 
                        <tr>
                            <td><b>Data <i style="color:red">*</i></b> {!! Form::date('date',null, ['class'=>'form-control', 'required']) !!}</td>
                            <td><b>Presidida <i style="color:red">*</i></b> {!! Form::text('presidida',null, ['class'=>'form-control','maxlength'=>'35', 'required']) !!}</td>
                            <td><b>Dirigida <i style="color:red">*</i></b> {!! Form::text('dirigida',null, ['class'=>'form-control','maxlength'=>'35','required']) !!}</td>
                            <td><b>Frequência</b> {!! Form::text('frequencia',null, ['class'=>'form-control','maxlength'=>'4']) !!}</td>
                        </tr>

                        <!--Reconhecimentos-->
                        <tr>
                            <td><b>Reconhecer</b>{!! Form::text('rec_nome1',null, ['class'=>'form-control','maxlength'=>'35']) !!}</td>
                            <td><b>Chamado</b> {!! Form::text('rec_cham1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Reconhecer</b> {!! Form::text('rec_nome2',null, ['class'=>'form-control','maxlength'=>'35']) !!}</td>
                            <td><b>Chamado</b> {!! Form::text('rec_cham2',null, ['class'=>'form-control']) !!}</td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('rec_nome3',null, ['class'=>'form-control','maxlength'=>'35']) !!}</td>
                            <td>{!! Form::text('rec_cham3',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('rec_nome4',null, ['class'=>'form-control','maxlength'=>'35']) !!}</td>
                            <td>{!! Form::text('rec_cham4',null, ['class'=>'form-control']) !!}</td>
                        </tr>

                        
                        <!--Anuncios-->
                        <tbody class="well well-xs">
                        <tr>
                            <td><b>Anúncios</b> {!! Form::text('anun_1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Data</b> {!! Form::date('data_anun_1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Horário</b> {!! Form::text('hora_anun_1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Local</b> {!! Form::text('local_anun_1',null, ['class'=>'form-control']) !!}</td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('anun_2',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::date('data_anun_2',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('hora_anun_2',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('local_anun_2',null, ['class'=>'form-control']) !!}</td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('anun_3',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::date('data_anun_3',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('hora_anun_3',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('local_anun_3',null, ['class'=>'form-control']) !!}</td>
                        </tr>
                        <!--
                        <tr>
                            <td>{!! Form::text('anun_4',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::date('data_anun_4',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('hora_anun_4',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('local_anun_4',null, ['class'=>'form-control']) !!}</td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('anun_5',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::date('data_anun_5',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('hora_anun_5',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('local_anun_5',null, ['class'=>'form-control']) !!}</td>
                        </tr>
                        -->                        
                        </tbody>
                    </table>
                </tbody>
                    <!--Hino 1, Regente, pianista, oração-->
                    <table class="table table-hover well well-xs" style="font-size:12px">
                        <tr>
                            <td><b>Hino de abertura</b>
                                <select name="hino1" class="form-control">
                                    <option value=""> -- Escolha um hino -- </option> 
                                    @foreach ($hinos as $hino)
                                        <option value="{{$hino->num}}">{{$hino->num}} - {{$hino->nome}}</option>
                                    @endforeach
                                </select>
                            </td>
                            <td><b>Regente</b>{!! Form::text('regente',null, ['class'=>'form-control','maxlength'=>'35']) !!}</td>
                            <td><b>Pianista</b>{!! Form::text('pianista',null, ['class'=>'form-control','maxlength'=>'35']) !!}</td>
                            <td><b>Oração de abertura</b>{!! Form::text('oracao1',null, ['class'=>'form-control','maxlength'=>'35']) !!}</td>
                        </tr>
                    </table>

                    <!--Bênção de crianças-->
                    <table class="table table-hover well well-xs" style="font-size:12px">
                        <tbody>
                        <tr>
                            <td><b>Bênção de Criança</b> {!! Form::text('bencao1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Quem fará a bênção</b> {!! Form::text('abencoador1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Ofício no sacerdócio</b>
                                 {!! Form::select('oficio1',[
                                     'Élder'=>'Élder',
                                     'Sumo Sacerdote'=>'Sumo Sacerdote',
                                     'Bispo'=>'Bispo',
                                     'Patriarca'=>'Patriarca',
                                     'Setenta'=>'Setenta',
                                 ],null, ['class'=>'form-control','placeholder'=>' -- Escolha o ofício -- ']) !!}</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('bencao2',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('abencoador2',null, ['class'=>'form-control']) !!}</td>
                            <td>
                                 {!! Form::select('oficio2',[
                                     'Élder'=>'Élder',
                                     'Sumo Sacerdote'=>'Sumo Sacerdote',
                                     'Bispo'=>'Bispo',
                                     'Patriarca'=>'Patriarca',
                                     'Setenta'=>'Setenta',
                                 ],null, ['class'=>'form-control','placeholder'=>' -- Escolha o ofício -- ']) !!}</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('bencao3',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('abencoador3',null, ['class'=>'form-control']) !!}</td>
                            <td>
                                 {!! Form::select('oficio3',[
                                     'Élder'=>'Élder',
                                     'Sumo Sacerdote'=>'Sumo Sacerdote',
                                     'Bispo'=>'Bispo',
                                     'Patriarca'=>'Patriarca',
                                     'Setenta'=>'Setenta',
                                 ],null, ['class'=>'form-control','placeholder'=>' -- Escolha o ofício -- ']) !!}
                            </td>
                            <td></td>
                        </tr>
                        </tbody>

                        <!--Confirmação de conversos-->
                        <tbody>
                        <tr>
                            <td><b>Confirmação de Converso</b> {!! Form::text('converso1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Quem fará a confirmação</b> {!! Form::text('confirmador1',null, ['class'=>'form-control']) !!}</td>
                            <td>
                                <b>Ofício no sacerdócio</b>
                                {!! Form::select('oficio4',[
                                    'Élder'=>'Élder',
                                    'Sumo Sacerdote'=>'Sumo Sacerdote',
                                    'Bispo'=>'Bispo',
                                    'Patriarca'=>'Patriarca',
                                    'Setenta'=>'Setenta',
                                ],null, ['class'=>'form-control','placeholder'=>' -- Escolha o ofício -- ']) !!}
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('converso2',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('confirmador2',null, ['class'=>'form-control']) !!}</td>
                            <td>
                                {!! Form::select('oficio5',[
                                    'Élder'=>'Élder',
                                    'Sumo Sacerdote'=>'Sumo Sacerdote',
                                    'Bispo'=>'Bispo',
                                    'Patriarca'=>'Patriarca',
                                    'Setenta'=>'Setenta',
                                ],null, ['class'=>'form-control','placeholder'=>' -- Escolha o ofício -- ']) !!}
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('converso3',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('confirmador3',null, ['class'=>'form-control']) !!}</td>
                            <td>
                                {!! Form::select('oficio6',[
                                    'Élder'=>'Élder',
                                    'Sumo Sacerdote'=>'Sumo Sacerdote',
                                    'Bispo'=>'Bispo',
                                    'Patriarca'=>'Patriarca',
                                    'Setenta'=>'Setenta',
                                ],null, ['class'=>'form-control','placeholder'=>' -- Escolha o ofício -- ']) !!}
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('converso4',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('confirmador4',null, ['class'=>'form-control']) !!}</td>
                            <td>
                                {!! Form::select('oficio7',[
                                    'Élder'=>'Élder',
                                    'Sumo Sacerdote'=>'Sumo Sacerdote',
                                    'Bispo'=>'Bispo',
                                    'Patriarca'=>'Patriarca',
                                    'Setenta'=>'Setenta',
                                ],null, ['class'=>'form-control','placeholder'=>' -- Escolha o ofício -- ']) !!}
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('converso5',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('confirmador5',null, ['class'=>'form-control']) !!}</td>
                            <td>
                                {!! Form::select('oficio8',[
                                    'Élder'=>'Élder',
                                    'Sumo Sacerdote'=>'Sumo Sacerdote',
                                    'Bispo'=>'Bispo',
                                    'Patriarca'=>'Patriarca',
                                    'Setenta'=>'Setenta',
                                ],null, ['class'=>'form-control','placeholder'=>' -- Escolha o ofício -- ']) !!}
                            </td>
                            <td></td>
                        </tr>
                        </tbody>

                        <!--Desobrigações-->
                        <tbody>
                        <tr>
                            <td><b>Desobrigações</b>{!! Form::text('desob_nome1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Chamado</b>{!! Form::text('desob_cham1',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('desob_nome2',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('desob_cham2',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('desob_nome3',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('desob_cham3',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('desob_nome4',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('desob_cham4',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('desob_nome5',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('desob_cham5',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('desob_nome6',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('desob_cham6',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                       
                        </tbody>

                        <!--Apoios-->
                        <tbody>
                        <tr>
                            <td><b>Apoios</b>{!! Form::text('apoio_nome1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Chamado</b>{!! Form::text('apoio_cham1',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('apoio_nome2',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('apoio_cham2',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('apoio_nome3',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('apoio_cham3',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('apoio_nome4',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('apoio_cham4',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td>{!! Form::text('apoio_nome5',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('apoio_cham5',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>{!! Form::text('apoio_nome6',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('apoio_cham6',null, ['class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        
                        </tbody>
                    </table>
                    <!-- Sacramento -->
                    <table class="table table-hover well well-xs" style="font-size:12px">
                        <tr>
                            <td><b>Hino Sacramental</b>
                                <select name="hino2" class="form-control">
                                    <option value=""> -- Escolha um hino -- </option> 
                                    @foreach ($hinos as $hino)
                                        <option value="{{$hino->num}}">{{$hino->num}} - {{$hino->nome}}</option>
                                    @endforeach
                                </select>
                            </td>
                            <td><b>Abençoando</b>{!! Form::text('sacerdote1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Distribuindo</b>{!! Form::text('diacono1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Distribuindo</b>{!! Form::text('diacono2',null, ['class'=>'form-control']) !!}</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>{!! Form::text('sacerdote2',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('diacono3',null, ['class'=>'form-control']) !!}</td>
                            <td>{!! Form::text('diacono4',null, ['class'=>'form-control']) !!}</td>
                        </tr>
                    </table>

                        <!-- Discursantes, hino especial e encerramento -->
                    <table class="table table-hover well well-xs" style="font-size:12px">
                        <tr>
                            <td><b>1º Discursante</b>{!! Form::text('discursante1',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Tempo</b>{!! Form::number('tempo1',null, ['min'=>'1','max'=>'60','class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><b>2º Discursante</b>{!! Form::text('discursante2',null, ['class'=>'form-control']) !!}</td>
                            <td><b>Tempo</b>{!! Form::number('tempo2',null, ['min'=>'1','max'=>'60','class'=>'form-control']) !!}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><b>Hino Especial</b>
                                <select name="hino3" class="form-control">
                                    <option value=""> -- Escolha um hino -- </option> 
                                    @foreach ($hinos as $hino)
                                        <option value="{{$hino->num}}">{{$hino->num}} - {{$hino->nome}}</option>
                                    @endforeach
                                </select>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <table class="table table-hover well well-xs" style="font-size:12px">
                            <tr>
                                <td><b>3º Discursante</b>{!! Form::text('discursante3',null, ['class'=>'form-control']) !!}</td>
                                <td><b>Tempo</b>{!! Form::number('tempo3',null, ['min'=>'1','max'=>'60','class'=>'form-control']) !!}</td>
                                <td><b>Hino de encerramento</b>
                                    <select name="hino4" class="form-control">
                                        <option value=""> -- Escolha um hino -- </option> 
                                        @foreach ($hinos as $hino)
                                            <option value="{{$hino->num}}">{{$hino->num}} - {{$hino->nome}}</option>
                                        @endforeach
                                    </select>
                                </td>
                                <td><b>Oração de encerramento</b>{!! Form::text('oracao2',null, ['class'=>'form-control','maxlength'=>'35']) !!}</td>
                            </tr>
                        </table>
                    </table>
                    <p>(<i style="color:red">* </i>) campos obrigatórios</p>
                    <div class="text-center">
                        {!! Form::submit('Salvar Agenda', ['class'=>'btn btn-primary']) !!}
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection