<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ConselorController extends Controller
{
    public function index(){
        return view('conselor.index');
    }
}
