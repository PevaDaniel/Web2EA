<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SzoftverSeeder extends Seeder
{
    public function run(): void
    {
        $path = database_path('seeders/data/szoftver.txt');

        if (!file_exists($path)) {
            $this->command->error("Nem található a fájl: $path");
            return;
        }

        $handle = fopen($path, 'r');
        if (!$handle) {
            $this->command->error("Nem sikerült megnyitni a fájlt: $path");
            return;
        }

        $header = true;
        $count = 0;

        while (($line = fgetcsv($handle, 1000, "\t")) !== false) {
            if ($header) {
                $header = false;
                continue;
            }

            [$id,$nev, $kategoria] = $line;

            DB::table('szoftver')->insert([
                'id' => $id,
                'nev' => $nev,
                'kategoria' => $kategoria,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            $count++;
        }

        fclose($handle);
        $this->command->info("SzoftverSeeder lefutott, $count rekord beszúrva.");
    }
}
