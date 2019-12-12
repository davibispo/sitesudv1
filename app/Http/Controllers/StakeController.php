<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\User;
use App\Models\Message;
use App\Models\Calendar;

class StakeController extends Controller
{
    public function index() {
        $stake = auth()->user()->stake;
        $messages = Message::all()->where('stake', $stake)->where('ativo','1');
        $users = User::all()->where('stake',$stake);

        $dataAtual = date('d-m-Y');
        $calendars = Calendar::all()
                        ->where('stake', $stake)
                        ->where('ativo','1')
                        ->sortByDesc('data');

        foreach($calendars as $calendar){
            if(strtotime($calendar->data) >= strtotime($dataAtual)){
                $proximoEvento = $calendar->evento . ' - (Dia ' . date('d/m/y', strtotime($calendar->data)) . ' - ' . $calendar->horario . ')';
            }
        }
        //dd($proximoEvento);

        return view('stakes.index', compact('stake','messages','users','proximoEvento'));
    }
}
