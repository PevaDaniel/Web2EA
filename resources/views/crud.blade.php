@extends('layouts.app')

@section('content')
    <div class="container mt-4">
        <h2>CRUD – Gép nyilvántartás</h2>

        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

        {{-- Új rekord felvitele --}}
        <div class="card mb-4">
            <div class="card-header">Új gép hozzáadása</div>
            <div class="card-body">
                <form method="POST" action="{{ route('crud.store') }}">
                    @csrf
                    <div class="row g-2">
                        <div class="col-md-3">
                            <input type="text" name="hely" class="form-control" placeholder="Hely" required>
                        </div>
                        <div class="col-md-3">
                            <input type="text" name="tipus" class="form-control" placeholder="Típus" required>
                        </div>
                        <div class="col-md-3">
                            <input type="text" name="ipcim" class="form-control" placeholder="IP cím" required>
                        </div>
                        <div class="col-md-3">
                            <button class="btn btn-success w-100">Hozzáadás</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        {{-- Tábla megjelenítés --}}
        <table class="table table-bordered table-striped align-middle text-center">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Hely</th>
                    <th>Típus</th>
                    <th>IP cím</th>
                    <th>Műveletek</th>
                </tr>
            </thead>
            <tbody>
    @foreach($computers as $c)
        <tr>
            <td>{{ $c->id }}</td>
            <td>
                <input type="text" form="update-{{ $c->id }}" name="hely" value="{{ $c->hely }}" class="form-control form-control-sm">
            </td>
            <td>
                <input type="text" form="update-{{ $c->id }}" name="tipus" value="{{ $c->tipus }}" class="form-control form-control-sm">
            </td>
            <td>
                <input type="text" form="update-{{ $c->id }}" name="ipcim" value="{{ $c->ipcim }}" class="form-control form-control-sm">
            </td>
            <td>
                <div class="d-flex gap-1">
                    {{-- Update form --}}
                    <form id="update-{{ $c->id }}" method="POST" action="{{ route('crud.update', $c->id) }}">
                        @csrf
                        @method('PUT')
                        <button class="btn btn-primary btn-sm">💾 Mentés</button>
                    </form>

                    {{-- Delete form --}}
                    <form method="POST" action="{{ route('crud.destroy', $c->id) }}">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-danger btn-sm" onclick="return confirm('Biztosan törlöd?')">🗑️</button>
                    </form>
                </div>
            </td>
        </tr>
    @endforeach
</tbody>

        </table>
    </div>
@endsection