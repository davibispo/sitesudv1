<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Calendar;

class CalendarController extends Controller {

    public function index() {
        $stake = auth()->user()->stake;

        $calendars = Calendar::all()->where('stake', $stake)->where('ativo','1')->sortBy('data');

        //pega data por extenso em portugues
        setlocale(LC_TIME, 'portuguese');
        date_default_timezone_set('America/Sao_Paulo');
        //dd(strftime("%A, %d de %B de %Y", strtotime($data)));
        //dd(strtoupper(strftime("%B de %Y", strtotime($data))));

        return view('maceio-stakes.tabuleiro-stake.calendars.index', compact('calendars', 'stake'));
    }

    public function create() {
        $stake = auth()->user()->stake;

        return view('maceio-stakes.tabuleiro-stake.calendars.create', compact('stake'));
    }

    public function store(Request $request) {
        $this->validate($request, [
            'stake' => 'required|string|max:30',
            'organizacao' => 'required|string|max:50',
            'evento' => 'required|string|max:300',
            'data' => 'required|date',
            'horario' => 'required|string|max:30',
            'publico' => 'required|string|max:100',
        ]);

        $calendar = new Calendar();

        $calendar->stake = $request->stake;
        $calendar->organizacao = $request->organizacao;
        $calendar->evento = $request->evento;
        $calendar->data = $request->data;
        $calendar->horario = $request->horario;
        $calendar->local = $request->local;
        $calendar->publico = $request->publico;

        $calendar->save();

        return redirect()->route('calendars.index')->with('alertSuccess', 'Evento cadastrado!');
    }

    public function showCalendar() {
        $stake = auth()->user()->stake;

        return view('maceio-stakes.tabuleiro-stake.calendars.show', compact('stake'));
    }

    public function show($id){
        //
    }

    public function edit($id) {
        $stake = auth()->user()->stake;
        $calendar = Calendar::find($id);

        return view('maceio-stakes.tabuleiro-stake.calendars.update', compact('calendar', 'stake'));
    }

    public function update(Request $request, $id) {
        $calendar = Calendar::find($id);

        $this->validate($request, [
            'stake' => 'required|string|max:30',
            'organizacao' => 'required|string|max:50',
            'evento' => 'required|string|max:300',
            'data' => 'required|date',
            'horario' => 'required|string|max:30',
            'publico' => 'required|string|max:100',
        ]);

        $calendar->stake = $request->stake;
        $calendar->organizacao = $request->organizacao;
        $calendar->evento = $request->evento;
        $calendar->data = $request->data;
        $calendar->horario = $request->horario;
        $calendar->local = $request->local;
        $calendar->publico = $request->publico;

        $calendar->update();

        return redirect()->route('calendars.index')->with('alertSuccess', 'Atualizado!');
    }

    public function destroy($id) {
        $calendar = Calendar::find($id);

        $calendar->ativo = '0';
        $calendar->update();

        return redirect()->route('calendars.index')->with('alertDanger', 'Excluído!');
    }

    

}
