<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SelfReliance;
use App\User;
use Illuminate\Support\Facades\DB;

class GroupsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stake = auth()->user()->stake;
        $ward = auth()->user()->ward;
        $user = auth()->user()->id;

        $perfiLiderEstaca = DB::table('role_user')->where('user_id', $user)->where('role_id', 16)->exists();
        $perfiPresidenciaEstaca = DB::table('role_user')->where('user_id', $user)->where('role_id', 5)->exists();
        //dd($perfiLiderEstaca);
        $ano = date('Y');

        if($perfiLiderEstaca == true || $perfiPresidenciaEstaca == true){
            $groupMembers = SelfReliance::all()
                            ->where('stake', $stake)
                            ->where('ativo','1')
                            ->sortByDesc('grupo');
            $users = User::all()->where('stake', $stake);
        }else{
            $groupMembers = SelfReliance::all()
                            ->where('stake', $stake)
                            ->where('ward', $ward)
                            ->where('ativo','1')
                            ->sortByDesc('grupo');
            $users = User::all()
                            ->where('stake', $stake)
                            ->where('ward', $ward);
        }
        $count = 0;

        return view('stakes.self-reliances.groups.index', compact('stake','ward','groupMembers','users','count','ano'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $ward = auth()->user()->ward;

        return view('stakes.self-reliances.groups.create', compact('ward'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request);
        $groupMember = new SelfReliance();

        $groupMember->stake = auth()->user()->stake;        
        $groupMember->ward = auth()->user()->ward;        
        $groupMember->user_id = auth()->user()->id;        
        $groupMember->grupo = $request->grupo;        
       
        $groupMember->save();

        return redirect()->route('groups.index')->with('alertSuccess','Solicitação cadastrada com sucesso!');
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
        $ward = auth()->user()->ward;
        $stake = auth()->user()->stake;
        $groupMember = SelfReliance::find($id);
        $users = User::all()->where('id', $groupMember->user_id);

        return view('stakes.self-reliances.groups.update', compact('groupMember','users','ward','stake'));
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
        $groupMember = SelfReliance::find($id);

        $groupMember->status = $request->status;
        $groupMember->update();

        switch($groupMember->status){
            case '2' :
                $return = redirect()->route('groups.index')->with('alertSuccess', 'Membro Matriculado com Sucesso!');
            break;
            case '4' :
                $return = redirect()->route('groups.index')->with('alertDanger', 'Desistência registrada!');
            break;
            case '5' :
                $return = redirect()->route('groups.index')->with('alertSuccess', 'Conclusão do curso registrada!');
            break;
            
            default;
        }
        
        return $return;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $groupMember = SelfReliance::find($id);

        $groupMember->ativo = '0';
        $groupMember->update();
        
        return redirect()->route('groups.index')->with('alertDanger', 'Cadastro excluído!');
    }
}
