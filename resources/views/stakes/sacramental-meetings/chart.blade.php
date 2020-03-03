@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
            <div class="panel-heading"><b>Gráfico da Frequência Sacramental de {{$ward}}</b></div>

                <div class="panel-body">
                    
                    <div class="text-left">
                        <a href="{{route('sacramental-meetings.index')}}" class="btn btn-default btn-xs">
                            <i class="fas fa-angle-left"></i> voltar
                        </a>
                    </div>
                    <br>
                    <div class="container">
                        <!-- Ano vigente -->
                        <div class="alert alert-success" style="width:80%">
                            <!-- Gráfico inicio -->
                            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                            <script type="text/javascript">
                            google.charts.load('current', {'packages':['corechart']});
                            google.charts.setOnLoadCallback(drawChart);

                            function drawChart() {

                                var data = new google.visualization.DataTable();
                                data.addColumn('date', 'Domingo');
                                data.addColumn('number', 'Frequência');

                                data.addRows([
                                    @foreach ($sacramentalMeetings as $s)
                                        @if(date('Y', strtotime($s->date)) == date('Y'))
                                            @php
                                                $d = date('d', strtotime($s->date));
                                                $m = date('m', strtotime($s->date)) - 1;
                                                $y = date('Y', strtotime($s->date));
                                            @endphp
                                            
                                            [new Date({{$y}}, {{$m}}, {{$d}}), {{ $s->frequencia }}],  
                                        @endif
                                    @endforeach
                                                            
                                ]);

                                var options = {
                                    title: 'Frequências da Sacramental ' + {{$anoAtual}},
                                    //width: 800,
                                    height: 350,
                                    hAxis: {
                                        format: 'MM',
                                        gridlines: {count:12}
                                    },
                                    vAxis: {
                                        gridlines: {color: 'none'},
                                        minValue: 1
                                    },
                                    legend: { position: 'bottom' },
                                    
                                };

                                var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

                                chart.draw(data, options);

                                var button = document.getElementById('change');

                                button.onclick = function () {

                                // If the format option matches, change it to the new option,
                                // if not, reset it to the original format.
                                options.hAxis.format === 'd/M/y' ?
                                options.hAxis.format = 'd M, y' :
                                options.hAxis.format = 'd/M/y';

                                chart.draw(data, options);
                                };
                            }
                            </script>
                            <div id="chart_div"></div>
                            <!-- Gráfico fim -->
                        </div>

                        <!-- Ano anterior -->
                        <div class="alert alert-danger" style="width:80%">
                            <!-- Gráfico inicio -->
                            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                            <script type="text/javascript">
                            google.charts.load('current', {'packages':['corechart']});
                            google.charts.setOnLoadCallback(drawChart);

                            function drawChart() {

                                var data = new google.visualization.DataTable();
                                data.addColumn('date', 'Domingo');
                                data.addColumn('number', 'Frequência');

                                data.addRows([
                                    @foreach ($sacramentalMeetings as $s)
                                        @if(date('Y', strtotime($s->date)) == 2019)
                                            @php
                                                $d = date('d', strtotime($s->date));
                                                $m = date('m', strtotime($s->date)) - 1;
                                                $y = date('Y', strtotime($s->date));
                                            @endphp
                                            
                                            [new Date({{$y}}, {{$m}}, {{$d}}), {{ $s->frequencia }}],  
                                        @endif
                                    @endforeach
                                                            
                                ]);

                                var options = {
                                    title: 'Frequências da Sacramental ' + {{$anoAnterior}},
                                    //width: 800,
                                    height: 350,
                                    hAxis: {
                                        format: 'MM',
                                        gridlines: {count:12}
                                    },
                                    vAxis: {
                                        gridlines: {color: 'none'},
                                        minValue: 1
                                    },
                                    legend: { position: 'bottom' },
                                    
                                };

                                var chart = new google.visualization.LineChart(document.getElementById('chart_div2'));

                                chart.draw(data, options);

                                var button = document.getElementById('change');

                                button.onclick = function () {

                                // If the format option matches, change it to the new option,
                                // if not, reset it to the original format.
                                options.hAxis.format === 'd/M/y' ?
                                options.hAxis.format = 'd M, y' :
                                options.hAxis.format = 'd/M/y';

                                chart.draw(data, options);
                                };
                            }
                            </script>
                            <div id="chart_div2"></div>
                            <!-- Gráfico fim -->
                        </div>
                        
                    </div>                                   
                </div>
            </div>
        </div>
    </div>
</div>

@endsection