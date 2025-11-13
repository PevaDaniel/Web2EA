<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Telepites extends Model
{
    protected $table = 'telepites';
    protected $fillable = ['gepid', 'szoftverid', 'verzio', 'datum'];

    public function gep() {
        return $this->belongsTo(Computer::class, 'gepid');
    }

    public function szoftver() {
        return $this->belongsTo(Szoftver::class, 'szoftverid');
    }
}
