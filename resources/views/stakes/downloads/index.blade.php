@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Arquivos para Downloads</b></div>

                <div class="panel-body">
                    @can('calendar_create')
                    <div>
                        <a href="{{route('downloads.create')}}" class="btn btn-primary btn-xs">
                            Inserir novo arquivo
                        </a>
                    </div>
                    <br>
                    @endcan
                    <div class="perfil">
                        <table class="table table-striped" style="font-size:12px">
                            <thead>
                                <tr>
                                    <th>Arquivo</th>
                                    <th style="text-align:center"><i class="fas fa-download"></i></th>
                                    @can('calendar_create')
                                    <th style="text-align:center"><i class="fas fa-trash"></i></th>
                                    @endcan
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($downloads as $item)
                                <tr>
                                    <td>{{ $item->descricao }}</td>
                                    <td style="text-align:center"><a href="{{url("storage/{$item->arquivo}")}}" target="_blank">baixar</a></td>
                                    @can('calendar_create')
                                    <td style="text-align:center">
                                        {!! Form::open(['method'=>'DELETE', 'action'=>['DownloadController@destroy', $item->id], 'style'=>'display:inline']) !!}
                                            {!! Form::submit('deletar', ['class'=>'btn btn-link btn-xs', 'style'=>'color:red']) !!}
                                        {!! Form::close() !!}
                                    </td>
                                    @endcan
                                </tr>
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

