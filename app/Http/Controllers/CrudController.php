<?php

namespace App\Http\Controllers;

use App\Models\Computer;
use Illuminate\Http\Request;

class CrudController extends Controller
{
    public function index()
    {
        $computers = Computer::all();
        return view('crud', compact('computers'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'hely' => 'required|string|max:50',
            'tipus' => 'required|string|max:50',
            'ipcim' => 'required|string|max:50|unique:gep,ipcim',
        ]);

        Computer::create($request->all());
        return redirect()->route('crud.index')->with('success', 'Új gép hozzáadva!');
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'hely' => 'required|string|max:50',
            'tipus' => 'required|string|max:50',
            'ipcim' => 'required|string|max:50|unique:gep,ipcim,'.$id,
        ]);

        $computer = Computer::findOrFail($id);
        $computer->update($request->all());

        return redirect()->route('crud.index')->with('success', 'Gép módosítva!');
    }

    public function destroy($id)
    {
        Computer::findOrFail($id)->delete();
        return redirect()->route('crud.index')->with('success', 'Gép törölve!');
    }
}
