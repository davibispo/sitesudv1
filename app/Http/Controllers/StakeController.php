<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StakeController extends Controller
{
    public function index() {
        $stake = auth()->user()->stake;
        return view('stakes.index', compact('stake'));
    }
}
