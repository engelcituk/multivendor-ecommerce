<!DOCTYPE html>
<html lang="es-MX">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('settings.site_name', 'Plazora') }}</title>
    @include('partials.favicon')
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="font-sans text-gray-900 antialiased">
    <main class="min-h-screen bg-gray-100 px-4 py-8 sm:flex sm:items-center sm:justify-center">
        <div class="w-full sm:max-w-md">
            <a class="mb-6 flex justify-center" href="{{ route('home.index') }}" aria-label="Ir al inicio de {{ config('settings.site_name', 'Plazora') }}">
                <img class="h-10 w-auto" src="{{ asset(config('settings.site_logo', 'uploads/plazora-logo.svg')) }}" alt="{{ config('settings.site_name', 'Plazora') }}">
            </a>
            <section class="overflow-hidden bg-white px-6 py-6 shadow-md sm:rounded-lg">
                {{ $slot }}
            </section>
        </div>
    </main>
</body>
</html>
