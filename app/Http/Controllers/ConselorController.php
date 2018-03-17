<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ConselorCalendar;

class ConselorController extends Controller
{
    public function index(){
        return view('conselor.index');
    }

    //inicio calendario
    public function calendarIndex(){

        //pega data por extenso em portugues
        setlocale(LC_TIME, 'portuguese');
        date_default_timezone_set('America/Sao_Paulo');
        //dd(strftime("%A, %d de %B de %Y", strtotime($data)));
        //dd(strtoupper(strftime("%B de %Y", strtotime($data))));

        $eventos = ConselorCalendar::all()->where('ativo','1')->sortBy('date');

        return view('conselor.calendars.index', compact('eventos'));
    }

    public function calendarCreate(){
        return view('conselor.calendars.create');
    }

    public function calendarStore(Request $request){
        
        $calendar = new ConselorCalendar();

        $calendar->org = $request->org;
        $calendar->evento = $request->evento;
        $calendar->date = $request->date;
        $calendar->horario = $request->horario;
        $calendar->local = $request->local;
        $calendar->obs = $request->obs;

        $calendar->save();

        return redirect()->route('conselor.calendars.index')->with('alertSuccess','Evento cadastrado com sucesso!');
    }

    public function calendarEdit($id){
        $calendar = ConselorCalendar::find($id);
        return view('conselor.calendars.update', compact('calendar'));
    }

    public function calendarUpdate(Request $request, $id){
        
        $calendar = ConselorCalendar::find($id);

        $calendar->org = $request->org;
        $calendar->evento = $request->evento;
        $calendar->date = $request->date;
        $calendar->horario = $request->horario;
        $calendar->local = $request->local;
        $calendar->obs = $request->obs;

        $calendar->update();

        return redirect()->route('conselor.calendars.index')->with('alertSuccess','Evento atualizado com sucesso!');
    }

    public function calendarDestroy($id){
        $calendar = ConselorCalendar::find($id);

        $calendar->ativo = '0';
        $calendar->update();

        return redirect()->route('conselor.calendars.index')->with('alertDanger', 'Evento Excluído!');
    }

    //fim calendario


    public function fileIndex(){
        return view('conselor.files.index');
    }

    public function fileStore($request){
        
    // Define o valor default para a variável que contém o nome da imagem 
    $nameFile = null;
 
        // Verifica se informou o arquivo e se é válido
        if ($request->hasFile('image') && $request->file('image')->isValid()) {
            
            // Define um aleatório para o arquivo baseado no timestamps atual
            $name = uniqid(date('HisYmd'));
    
            // Recupera a extensão do arquivo
            $extension = $request->image->extension();
    
            // Define finalmente o nome
            $nameFile = "{$name}.{$extension}";
    
            // Faz o upload:
            $upload = $request->image->storeAs('categories', $nameFile);
            // Se tiver funcionado o arquivo foi armazenado em storage/app/public/categories/nomedinamicoarquivo.extensao
    
            // Verifica se NÃO deu certo o upload (Redireciona de volta)
            if ( !$upload )
                return redirect()
                            ->back()
                            ->with('error', 'Falha ao fazer upload')
                            ->withInput();
    
    
        }
    }

    public function leaderIndex(){
        return view('conselor.leaders.index');
    }

    public function meetingIndex(){
        return view('conselor.meetings.index');
    }

    public function stakeIndex(){
        return view('conselor.stakes.index');
    }
}
