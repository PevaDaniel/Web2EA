@extends('layouts.app')

@section('content')
<h1>Login</h1>
<form method="POST" action="{{ route('login') }}">
    @csrf
    <input type="email" name="email" placeholder="Email" required class="form-control mb-2">
    <input type="password" name="password" placeholder="Password" required class="form-control mb-2">
    <label>
        <input type="checkbox" name="remember"> Remember Me
    </label>
    <button type="submit" class="btn btn-primary">Login</button>
</form>
<a href="{{ route('register') }}">Register</a>
@endsection
