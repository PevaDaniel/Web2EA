<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ComputerSeeder extends Seeder
{
    public function run(): void
    {
        $path = database_path('seeders/data/gep.txt');

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

            [$id,$hely, $tipus, $ipcim] = $line;

            DB::table('gep')->insert([
                'id' => $id,
                'hely' => $hely,
                'tipus' => $tipus,
                'ipcim' => $ipcim,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            $count++;
        }

        fclose($handle);
        $this->command->info("ComputerSeeder lefutott, $count rekord beszúrva.");
    }
}
