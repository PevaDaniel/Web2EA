<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        // Admin user létrehozása
        User::updateOrCreate(
            ['email' => 'admin@example.com'],
            [
                'name' => 'Admin User',
                'password' => Hash::make('admin123'),
                'role' => 'admin',
            ]
        );

        // Példa reg user
        User::updateOrCreate(
            ['email' => 'user@example.com'],
            [
                'name' => 'Regular User',
                'password' => Hash::make('user123'),
                'role' => 'registered',
            ]
        );

        // Egyéb seederek meghívása
        $this->call([
            ComputerSeeder::class,
            SzoftverSeeder::class,
            TelepitesSeeder::class,
        ]);
    }
}
