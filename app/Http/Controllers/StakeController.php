<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StakeController extends Controller
{
    public function index() {
        return view('stakes.index');
    }
}
