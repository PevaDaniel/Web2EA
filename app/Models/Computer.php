<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Computer extends Model
{
    protected $table = 'gep';
    protected $fillable = ['hely', 'tipus', 'ipcim'];

    public function telepitesek() {
        return $this->hasMany(Telepites::class, 'gepid');
    }
}
