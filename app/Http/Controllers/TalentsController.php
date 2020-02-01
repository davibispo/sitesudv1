<?php

namespace App\Http\Controllers;

use App\Models\Talents;
use Illuminate\Http\Request;

class TalentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $talents = Talents::all()->sortBy('unidade');
        return view('stakes.self-reliances.talents.index', compact('talents'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('stakes.self-reliances.talents.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $talent = new Talents();

        $talent->nome = $request->nome;
        $talent->telefone1 = $request->telefone1;
        $talent->telefone2 = $request->telefone2;
        $talent->unidade = $request->unidade;
        $talent->habilidades = $request->habilidades;

        $talent->save();

        return redirect()->route('talents.index')->with('alertSuccess','Talento cadastrado com sucesso!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $talent = Talents::find($id);
        $talent->delete();

        return redirect()->back()->with('alertDanger','Excluído com sucesso!');
    }
}
