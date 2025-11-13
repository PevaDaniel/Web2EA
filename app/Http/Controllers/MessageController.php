<?php

namespace App\Http\Controllers;
use App\Models\Message;

class MessageController extends Controller
{
    public function index() {
        $messages = Message::latest()->paginate(10);
        return view('messages', compact('messages'));
    }
}
