<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/iconly/bold.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/perfect-scrollbar/perfect-scrollbar.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/bootstrap-icons/bootstrap-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/fontawesome/all.min.css') }}">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/choices.js/public/assets/styles/choices.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/choices.js/public/assets/scripts/choices.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <!-- Styles / Scripts -->
    @if (file_exists(public_path('build/manifest.json')) || file_exists(public_path('hot')))
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    @endif
</head>
<body>
    <div id="app">
        <div id="sidebar" class="active">
            @include('partials.sidebar')
        </div>
        <div id="main" class='layout-navbar'>
            @include('partials.navbar')
            <div id="main-content">
                @yield('container')
                @include('partials.footer')
            </div>
        </div>
    </div>

    <script src="{{ asset('assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/vendors/fontawesome/all.min.js') }}"></script>
    <script src="{{ asset('assets/js/main.js') }}"></script>
    <script src="{{ asset('js/index.js') }}"></script>
    <script src="{{ asset('assets/vendors/toastify/toastify.js') }}"></script>
    <script src="{{ asset('assets/js/extensions/toastify.js') }}"></script>
    @yield('js')
</body>
</html>