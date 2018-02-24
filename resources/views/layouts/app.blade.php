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
                            <li><a href="{{route('maceio-stakes.tabuleiro-stake.index')}}"><i class="fas fa-home"></i></a></li>
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
                                        <li><a href="{{route('maceio-stakes.tabuleiro-stake.index')}}">Maceió Tabuleiro</a></li>
                                        <li><a href="#">Aracajú Norte</a></li>
                                        <li><a href="#">Aracajú Sul</a></li>
                                        <li><a href="#">Aracajú Sul</a></li>
                                    </ul>
                            </li>
                            <li><a href="{{route('calendars.index')}}">Calendário</a></li>
                            <li><a href="{{route('interviews.index')}}">Entrevistas</a></li>
                            <li><a href="{{route('caravan-users.index')}}">Caravanas</a></li>
                            <li><a href="{{route('calleds.create')}}">Chamados</a></li>
                            <li><a href="{{route('equipment-rents.index')}}">Equipamentos</a></li>
                            <li><a href="{{route('meetings.index')}}">Reuniões</a></li>
                        </ul>

                        <!-- Right Side Of Navbar -->
                        <ul class="nav navbar-nav navbar-right">
                            <!-- Authentication Links -->
                            @guest    
                            <li><a href="{{ route('login') }}"><i class="fas fa-sign-in-alt"></i> Login</a></li>
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
                <p>Copyright &#174 {{date('Y')}} | by Davi Bispo - (82) 99969-3407 | davibispo.sud@gmail.com</p>
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
