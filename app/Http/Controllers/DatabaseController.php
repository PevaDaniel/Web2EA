<?php

namespace App\Http\Controllers;

use App\Models\Computer;
use App\Models\Szoftver;
use App\Models\Telepites;

class DatabaseController extends Controller
{
    public function index()
    {
        $computers = Computer::all();
        $software = Szoftver::all();
        $telepitesek = Telepites::with(['gep', 'szoftver'])->get();

        return view('database', compact('computers', 'software', 'telepitesek'));
    }
}
