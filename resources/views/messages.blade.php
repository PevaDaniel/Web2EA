@extends('layouts.app')

@section('content')
<h1>Messages</h1>
<table class="table">
    <thead>
        <tr><th>Name</th><th>Email</th><th>Message</th></tr>
    </thead>
    <tbody>
        @foreach($messages as $msg)
            <tr>
                <td>{{ $msg->name }}</td>
                <td>{{ $msg->email }}</td>
                <td>{{ $msg->message }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
@endsection
