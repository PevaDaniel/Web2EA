<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void {
        Schema::create('gep', function (Blueprint $table) {
            $table->id();
            $table->string('hely');
            $table->string('tipus');
            $table->string('ipcim')->unique();
            $table->timestamps();
        });
    }

    public function down(): void {
        Schema::dropIfExists('gep');
    }
};
