<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--Fonts Icons - Awesome 5-->
        <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'SiteSUD') }}</title>

        <!-- Styles -->
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    </head>
    <body>
        <div id="app">
            <nav class="navbar navbar-default navbar-static-top">
                <div class="container">
                    <div class="navbar-header">

                        <!-- Collapsed Hamburger -->
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse" aria-expanded="false">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <!-- Branding Image -->
                        <a class="navbar-brand" href="{{ url('/') }}">
                            {{ config('app.name', 'SiteSUD') }}
                        </a>
                    </div>

                    <div class="collapse navbar-collapse" id="app-navbar-collapse">
                        <!-- Left Side Of Navbar -->
                        <ul class="nav navbar-nav">
                            @can('stakes_index')
                            <li><a href="{{route('stakes.index')}}"><i class="fas fa-home"></i></a></li>
                            @endcan
                            @can('adm')
                            <li><a href="{{route('roles.index')}}"><i class="fas fa-address-book"></i></a></li>
                            <li><a href="{{route('permissions.index')}}"><i class="fas fa-ban"></i></a></li>
                            <li><a href="{{route('role-users.index')}}"><i class="fas fa-user-secret"></i></a></li>
                            <li><a href="{{route('users.index')}}"><i class="fas fa-users"></i></a></li>
                           
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Estacas
                                    <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Arapiraca</a></li>
                                        <li><a href="#">Maceió</a></li>
                                        <li><a href="#">Maceió Colina</a></li>
                                        <li><a href="#">Maceió Litoral</a></li>
                                        <li><a href="#">Maceió Pajuçara</a></li>
                                        <li><a href="#">Maceió Tabuleiro</a></li>
                                        <li><a href="#">Aracajú Norte</a></li>
                                        <li><a href="#">Aracajú Sul</a></li>
                                        <li><a href="#">Aracajú Sul</a></li>
                                    </ul>
                            </li>
                            @endcan
                            @can('calendar_index')
                            <li><a href="{{route('calendars.index')}}">Calendário</a></li>
                            @endcan
                            @can('interview_index')
                            <li><a href="{{route('interviews.index')}}">Entrevistas</a></li>
                            @endcan
                            <li class="dropdown">
                                @can('caravan_user_index')
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Caravanas
                                    <span class="caret"></span>
                                </a>
                                @endcan
                                <ul class="dropdown-menu">
                                    @can('caravan_user_index')
                                    <li><a href="{{route('caravan-users.index')}}">Reservas</a></li>
                                    @endcan
                                    @can('caravan_index')
                                    <li><a href="{{route('caravans.index')}}">Criar</a></li>
                                    @endcan
                                </ul>
                            </li> 
                            <li class="dropdown">
                                @can('called_create')    
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Chamados
                                    <span class="caret"></span>
                                </a>
                                @endcan
                                <ul class="dropdown-menu">
                                    @can('called_create')   
                                    <li><a href="{{route('calleds.create')}}">Indicar</a></li>
                                    @endcan
                                    @can('called_index')
                                    <li><a href="{{route('calleds.index')}}">Ver Indicações</a></li>
                                    @endcan
                                </ul>
                            </li>
                            <li class="dropdown">
                                @can('equipment_rent_index')
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Equipamentos
                                    <span class="caret"></span>
                                </a>
                                @endcan
                                <ul class="dropdown-menu">
                                    @can('equipment_rent_index')
                                    <li><a href="{{route('equipment-rents.index')}}">Empréstimos</a></li>
                                    @endcan
                                    @can('equipment_index')
                                    <li><a href="{{route('equipments.index')}}">Cadastrar</a></li>
                                    @endcan
                                </ul>
                            </li>
                            <li class="dropdown">
                                @can('meeting_index')
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Reuniões
                                    <span class="caret"></span>
                                </a>
                                @endcan
                                <ul class="dropdown-menu">
                                    @can('meeting_index')
                                    <li><a href="{{route('meetings.index')}}">Agendas</a></li>
                                    @endcan
                                </ul>
                            </li>
                        </ul>

                        <!-- Right Side Of Navbar -->
                        <ul class="nav navbar-nav navbar-right">
                            <!-- Authentication Links -->
                            @guest    
                            <li><a href="{{ route('login') }}"><i class="fas fa-sign-in-alt"></i> Login</a></li>
                            <li><a href="{{ route('register') }}"><i class="fas fa-user-plus"></i> Registrar</a></li>
                            @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">
                                    <i class="fas fa-user-circle"></i> 
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{{ route('logout') }}"
                                           onclick="event.preventDefault();
                                                   document.getElementById('logout-form').submit();">
                                            <i class="fas fa-sign-out-alt"></i> 
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                            @endguest
                        </ul>
                    </div>
                </div>
            </nav>
            <!--alertas-->
            @if (session('alertSuccess'))
                <div class="alert alert-success text-center">
                    {{ session('alertSuccess') }}
                </div>
                @elseif(session('alertDanger'))
                    <div class="alert alert-danger text-center">
                        {{ session('alertDanger') }}
                    </div>
            @endif
            <!--fim do alerta-->
            
            @yield('content')

            <div class="text-center">
                <br>
                <p>Copyright &#174 {{date('Y')}} | by Davi Bispo - (82) 99969-3407 | contato@sitesud.com.br</p>
                <p><i>Este não é um site oficial de A Igreja de Jesus Cristo dos Santos dos Últimos Dias</i></p>
            </div>
        </div>

        <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}"></script>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
        
        
        
    </body>
</html>
