<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Caravan;

class CaravanController extends Controller
{
    public function index()
    {
        $stake = auth()->user()->stake;
        $caravans = Caravan::all()->where('stake', $stake)->where('ativo','1')->sortBy('data');
        return view('stakes.caravans.index', compact('stake','caravans'));
    }

    public function create()
    {
        $stake = auth()->user()->stake;
        return view('stakes.caravans.create', compact('stake'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'data' => 'required|date',
            'bus' => 'required',
            'accommodation' => 'required',
        ]);
        
        $caravan = new Caravan();
        
        $caravan->stake = $request->stake;
        $caravan->data = $request->data;
        $caravan->leader = $request->leader;
        $caravan->phone = $request->phone;
        $caravan->bus = $request->bus;
        $caravan->accommodation = $request->accommodation;
        $caravan->obs = $request->obs;
        
        $caravan->save();
        
        return redirect()->route('caravans.index')->with('alertSuccess', 'Criada com sucesso!');
    }

    public function show($id)
    {
        $caravan = Caravan::find($id);
        return view('stakes.caravans.show', compact('caravan'));
    }

    public function edit($id)
    {
        $stake = auth()->user()->stake;
        $caravan = Caravan::find($id);
        //dd($caravan);
        return view('stakes.caravans.update', compact('caravan','stake'));
    }

    public function update(Request $request, $id)
    {
        $caravan = Caravan::find($id);
        
        $this->validate($request, [
            'data' => 'required|date',
            'bus' => 'required',
            'accommodation' => 'required',
        ]);
        
        $caravan->data = $request->data;
        $caravan->leader = $request->leader;
        $caravan->phone = $request->phone;
        $caravan->bus = $request->bus;
        $caravan->accommodation = $request->accommodation;
        $caravan->obs = $request->obs;
        
        $caravan->update();
        
        return redirect()->route('caravans.index')->with('alertSuccess', 'Atualizada!');
    }

    public function destroy($id)
    {
        $caravan = Caravan::find($id);

        $caravan->ativo = '0';
        $caravan->update();

        return redirect()->route('caravans.index')->with('alertDanger', 'Excluída!');
    }
}
