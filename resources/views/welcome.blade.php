<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>SiteSUD</title>

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="{!! asset('assets/img/favicon.ico') !!}">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: rgb(45, 133, 67);;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: rgb(45, 133, 67);;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
                border-radius: 10px;
                padding: 5px 10px 5px 10px;
            }

            .links > a:hover {
                background-color: rgb(45, 133, 67);
                color: white;
            }

            .m-b-md {
                margin-bottom: 30px;
            }

            .bottom{
                color: black;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            <div class="content">
                <div class="title m-b-md">
                    Site<b>SUD</b>
                </div>
                @if (Route::has('login'))
                <div class="links">
                    @auth
                    <a href="{{ route('stakes.index') }}">
                        Acesse sua estaca    
                    </a>
                    @else
                    <a href="{{ route('login') }}">Login</a>
                    <a href="{{ route('register') }}">Registrar</a>
                    @endauth
                </div>
                @endif
                <div class="text-center">
                    <br>
                    <p>Copyright &#174 2018-{{date('Y')}} | Todos os direitos reservados</p>
                    <p>by Davi Bispo | Contato: (82) 99969-3407 | davi-bispo@hotmail.com</p>
                    <p><i>Este não é um site oficial de A Igreja de Jesus Cristo dos Santos dos Últimos Dias</i></p>
                </div>
            </div>
        </div>
    </body>
</html>
