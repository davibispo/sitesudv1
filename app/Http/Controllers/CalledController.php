<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Called;
use App\User;

class CalledController extends Controller
{

    public function index()
    {
        $stake = auth()->user()->stake;
        $calleds = Called::all()->where('stake', $stake)->where('ativo','1')->sortByDesc('created_at');
        $users = User::all()->where('stake', $stake);

        return view('stakes.calleds.index', compact('stake','calleds','users'));
    }

    public function create()
    {
        $stake = auth()->user()->stake;
        return view('stakes.calleds.create', compact('stake'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'called' => 'required|string|max:100',
            'member' => 'required|string|max:100',
            'ward' => 'required|string|max:50',
        ]);
        
        $called = new Called();
        
        $called->stake = auth()->user()->stake;
        $called->user_id = auth()->user()->id;
        $called->called = $request->called;
        $called->member = $request->member;
        $called->priesthood = $request->priesthood;
        $called->ward = $request->ward;
        $called->obs = $request->obs;
        $called->status = $request->status;
        
        $called->save();
        
        return redirect()->route('calleds.index')->with('alertSuccess', 'Indicação enviada! Obrigado, analisaremos sua indicação!');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $called = Called::find($id);

        $stake = auth()->user()->stake;
        $userName = User::where('id',$called->user_id)->value('name');
        $userLastname = User::where('id',$called->user_id)->value('lastname');

        return view('stakes.calleds.update', compact('called', 'stake','userName','userLastname'));
    }

    public function update(Request $request, $id)
    {
        $called = Called::find($id);

        $called->status = $request->status;
        $called->reason_reject = $request->reason_reject;

        $called->update();

        return redirect()->route('calleds.index')->with('alertSuccess','O status da indicação foi atualizado!');
    }

    public function destroy($id)
    {
        $called = Called::find($id);

        $called->ativo = '0';
        $called->update();

        return redirect()->back()->with('alertDanger','Excluído!');
    }
}
