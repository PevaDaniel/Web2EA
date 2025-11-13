@extends('layouts.app')

@section('content')
<h1>Register</h1>
<form method="POST" action="{{ route('register') }}">
    @csrf
    <input type="text" name="name" placeholder="Name" required class="form-control mb-2">
    <input type="email" name="email" placeholder="Email" required class="form-control mb-2">
    <input type="password" name="password" placeholder="Password" required class="form-control mb-2">
    <input type="password" name="password_confirmation" placeholder="Confirm Password" required class="form-control mb-2">
    <button type="submit" class="btn btn-primary">Register</button>
</form>
<a href="{{ route('login') }}">Login</a>
@endsection
