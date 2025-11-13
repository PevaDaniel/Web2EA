@extends('layouts.app')

@section('content')
<div class="container mt-4">

    <h2>Gépek</h2>
    <table class="table table-bordered">
        <thead>
            <tr><th>ID</th><th>Hely</th><th>Típus</th><th>IP cím</th></tr>
        </thead>
        <tbody>
            @foreach($computers as $c)
                <tr>
                    <td>{{ $c->id }}</td>
                    <td>{{ $c->hely }}</td>
                    <td>{{ $c->tipus }}</td>
                    <td>{{ $c->ipcim }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h2>Szoftverek</h2>
    <table class="table table-bordered">
        <thead>
            <tr><th>ID</th><th>Név</th><th>Kategória</th></tr>
        </thead>
        <tbody>
            @foreach($software as $s)
                <tr>
                    <td>{{ $s->id }}</td>
                    <td>{{ $s->nev }}</td>
                    <td>{{ $s->kategoria }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h2>Telepítések</h2>
    <table class="table table-bordered">
        <thead>
            <tr><th>ID</th><th>Gép</th><th>Szoftver</th><th>Verzió</th><th>Dátum</th></tr>
        </thead>
        <tbody>
            @foreach($telepitesek as $t)
                <tr>
                    <td>{{ $t->id }}</td>
                    <td>{{ $t->gep->hely ?? 'Ismeretlen' }}</td>
                    <td>{{ $t->szoftver->nev ?? 'Ismeretlen' }}</td>
                    <td>{{ $t->verzio }}</td>
                    <td>{{ $t->datum }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

</div>
@endsection
