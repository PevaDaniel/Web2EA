<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TelepitesSeeder extends Seeder
{
    public function run(): void
    {
        $path = database_path('seeders/data/telepites.txt');

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

            [$gepid, $szoftverid, $verzio, $datum] = $line;

            DB::table('telepites')->insert([
                'gepid' => (int)$gepid,
                'szoftverid' => $szoftverid !== '' ? (int)$szoftverid : null, // nullable
                'verzio' => $verzio !== '' ? $verzio : null,
                'datum' => $datum !== '' ? str_replace('.', '-', $datum) : null,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            $count++;
        }

        fclose($handle);
        $this->command->info("TelepitesSeeder lefutott, $count rekord beszúrva.");
    }
}
