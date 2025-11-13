<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void {
        Schema::create('telepites', function (Blueprint $table) {
            $table->id();
            $table->foreignId('gepid')->constrained('gep')->onDelete('cascade');
            $table->foreignId('szoftverid')->constrained('szoftver')->onDelete('cascade');
            $table->string('verzio')->nullable();
            $table->date('datum')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void {
        Schema::dropIfExists('telepites');
    }
};
