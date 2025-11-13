<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class PageController extends Controller
{
    public function database()
    {
        return view('database');
    }
    public function crud()
    {
        return view('crud');
    }

    public function chart()
    {
        $adatok = DB::table('telepites')
            ->select(
                DB::raw("DATE_FORMAT(datum, '%Y-%m') as honap"),
                DB::raw("COUNT(*) as mennyiseg")
            )
            ->groupBy('honap')
            ->orderBy('honap')
            ->get();

        return view('chart', [
            'labels' => $adatok->pluck('honap'),
            'values' => $adatok->pluck('mennyiseg'),
        ]);
    }

}
