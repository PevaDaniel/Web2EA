<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Message;

class MessageSeeder extends Seeder
{
    public function run(): void
    {
        Message::create([
            'user_id' => 1,
            'subject' => 'Welcome!',
            'body' => 'This is a sample message from the admin panel.',
        ]);
    }
}
