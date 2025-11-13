@extends('layouts.app')

@section('content')
<h1>Contact Us</h1>
<form method="POST" action="{{ route('contact') }}">
    @csrf
    <input type="text" name="name" placeholder="Your Name" required class="form-control mb-2">
    <input type="email" name="email" placeholder="Your Email" required class="form-control mb-2">
    <textarea name="message" placeholder="Message" class="form-control mb-2" required></textarea>
    <button type="submit" class="btn btn-primary">Send</button>
</form>
@endsection
