<?php

namespace App\Http\Controllers;

use App\Models\Downloads;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DownloadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stake = auth()->user()->stake;
        $downloads = Downloads::all()->where('ativo', 1)->where('stake', $stake)->sortByDesc('created_at');
        return view('stakes.downloads.index', compact('downloads'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view('stakes.downloads.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $arquivo = new Downloads();
        $arquivo->user_id = auth()->user()->id;
        $arquivo->descricao = $request->descricao;
        $arquivo->stake = auth()->user()->stake;

        // Define o valor default para a variável que contém o nome da imagem --- ARQUIVO ----
        $nameFile = null;

        // Verifica se informou o arquivo e se é válido
        if ($request->hasFile('arquivo') && $request->file('arquivo')->isValid()) {

            // Define um aleatório para o arquivo baseado no timestamps atual
            $name = uniqid(date('YmdHis'));

            // Recupera a extensão do arquivo
            $extension = $request->arquivo->extension();

            // Define finalmente o nome
            $nameFile = "u{$arquivo->user_id}f{$name}.{$extension}";

            // Faz o upload:
            $arquivo->arquivo = $request->arquivo->storeAs('downloads', $nameFile);
            // Se tiver funcionado o arquivo foi armazenado em storage/app/public/categories/nomedinamicoarquivo.extensao
            // Verifica se NÃO deu certo o upload (Redireciona de volta)
            if ( !$arquivo->arquivo )
            return redirect()
                        ->back()
                        ->with('error', 'Falha ao fazer upload')
                        ->withInput();
        }else{
            return redirect()->back()->with('alertDanger', 'Arquivo não inserido! Verifique o formato ou tamanho permitidos.');
        }


        $arquivo->save();

        return redirect()->route('downloads.index')->with('alertSuccess', 'Arquivo salvo com sucesso!');
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
        $arquivo = Downloads::find($id);

        //deleta o arquivo também.
        Storage::delete("{$arquivo->arquivo}");
        
        $arquivo->delete();

        return redirect()->back()->with('alertDanger', 'Arquivo excluído com sucesso!');
    }
}
