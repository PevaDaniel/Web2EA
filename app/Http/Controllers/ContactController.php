<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Message;

class ContactController extends Controller
{
    public function index() {
        return view('contact');
    }

    public function store(Request $request) {
        $request->validate([
            'name'=>'required|string|max:255',
            'email'=>'required|email|max:255',
            'message'=>'required|string',
        ]);

        Message::create($request->only('name','email','message'));
        return redirect()->back()->with('success', 'Message sent successfully!');
    }
}
