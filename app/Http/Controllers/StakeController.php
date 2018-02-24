<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StakeController extends Controller
{
    public function indexTabuleiro() {
        return view('maceio-stakes.tabuleiro-stake.index');
    }
}
