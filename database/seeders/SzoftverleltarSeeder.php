<?php

namespace Database\Seeders;

use App\Models\Computer;
use Illuminate\Database\Seeder;
use App\Models\Gep;
use App\Models\Szoftver;
use App\Models\Telepites;

class SzoftverleltarSeeder extends Seeder
{
    public function run(): void
    {
        $gep1 = Computer::create(['hely' => 'T101', 'tipus' => 'asztali', 'ipcim' => '192.168.1.10']);
        $gep2 = Computer::create(['hely' => 'T202', 'tipus' => 'notebook', 'ipcim' => '192.168.1.20']);

        $word = Szoftver::create(['nev' => 'Microsoft Word', 'kategoria' => 'Irodai']);
        $chrome = Szoftver::create(['nev' => 'Google Chrome', 'kategoria' => 'Böngésző']);
        $python = Szoftver::create(['nev' => 'Python', 'kategoria' => 'Fejlesztői']);

        Telepites::create(['gepid' => $gep1->id, 'szoftverid' => $word->id, 'verzio' => '2021', 'datum' => '2024-02-01']);
        Telepites::create(['gepid' => $gep1->id, 'szoftverid' => $chrome->id, 'verzio' => '120', 'datum' => '2024-05-12']);
        Telepites::create(['gepid' => $gep2->id, 'szoftverid' => $python->id, 'verzio' => '3.12', 'datum' => '2024-03-03']);
    }
}
