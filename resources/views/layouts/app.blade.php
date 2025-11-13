<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Főoldal - Company</title>
<link rel="stylesheet" href="{{ asset('theme/css/photon.css') }}">
<link rel="stylesheet" href="{{ asset('css/custom.css') }}">
</head>
<body>
<nav class="navbar">
    <div class="container">
        <a class="navbar-brand" href="{{ route('home') }}">Company</a>
        <ul class="navbar-nav">
            <li><a href="{{ route('home') }}">Home</a></li>
            <li><a href="{{ route('database') }}">Database</a></li>
            <li><a href="{{ route('chart') }}">Chart</a></li>
            @guest
                <li><a href="{{ route('login') }}">Login</a></li>
            @else
                <li><a href="{{ route('crud.index') }}">CRUD</a></li>
                <li><a href="{{ route('contact') }}">Contact</a></li>
                <li><a href="{{ route('messages') }}">Messages</a></li>
                @if(auth()->user()->role === 'admin')
                    <li><a href="{{ route('admin') }}">Admin</a></li>
                @endif
                <li>
                    <form method="POST" action="{{ route('logout') }}" style="display:inline;">
                        @csrf
                        <button type="submit" class="btn-link">Logout</button>
                    </form>
                </li>
            @endguest
        </ul>
    </div>
</nav>

<main class="container mt-4">
    @yield('content')
</main>

<script src="{{ asset('theme/js/main.js') }}"></script>
</body>
</html>
