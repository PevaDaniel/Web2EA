<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Szoftver extends Model
{
    protected $table = 'szoftver';
    protected $fillable = ['nev', 'kategoria'];

    public function telepitesek() {
        return $this->hasMany(Telepites::class, 'szoftverid');
    }
}
