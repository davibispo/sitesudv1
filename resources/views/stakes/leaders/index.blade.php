@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><b>Líderes da Estaca {!!$stake!!}</b></div>

                <div class="panel-body">
                    <table class="">
                        <tr style="">
                            <td style="padding:20px; text-align:center;">
                                <div class="card">
                                    <img class="card-img-top" src="{!! asset('assets/img/tom.png') !!}" style="width:100px" alt="Card image">
                                    <div class="card-body">
                                        <h4 class="card-title">John Doe</h4>
                                        <p class="card-text">Some example text.</p>
                                    </div>
                                </div>
                            </td>
                            <td style="padding:20px; text-align:center;">
                                <div class="card">
                                    <img class="card-img-top" src="{!! asset('assets/img/davi.png') !!}" style="width:150px" alt="Card image">
                                    <div class="card-body">
                                        <h4 class="card-title">John Doe</h4>
                                        <p class="card-text">Some example text.</p>
                                    </div>
                                </div>
                            </td>
                            <td style="padding:20px; text-align:center;">
                                <div class="card">
                                    <img class="card-img-top" src="{!! asset('assets/img/bruno.png') !!}" style="width:100px" alt="Card image">
                                    <div class="card-body">
                                        <h4 class="card-title">John Doe</h4>
                                        <p class="card-text">Some example text.</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

