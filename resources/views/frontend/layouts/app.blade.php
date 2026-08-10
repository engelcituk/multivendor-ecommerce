@php
    $siteName = config('settings.site_name') ?: 'Plazora';
    $defaultDescription = config('settings.site_short_description') ?: 'Marketplace en línea con productos de vendedores verificados.';
    $pageTitle = trim($__env->yieldContent('title')) ?: $siteName;
    $pageDescription = trim($__env->yieldContent('meta_description')) ?: $defaultDescription;
    $canonicalUrl = trim($__env->yieldContent('canonical')) ?: url()->current();
    $socialImage = trim($__env->yieldContent('og_image')) ?: asset(config('settings.site_logo'));
    $privatePage = request()->is('dashboard', 'profile*', 'orders*', 'address*', 'wishlist*', 'cart*', 'checkout*', 'payment*', 'vendor/*');
    $robots = trim($__env->yieldContent('robots')) ?: ($privatePage ? 'noindex, nofollow' : 'index, follow, max-image-preview:large');
@endphp
<!DOCTYPE html>
<html class="no-js" lang="es-MX">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ $pageTitle }}</title>
    <meta name="description" content="{{ $pageDescription }}">
    <meta name="robots" content="{{ $robots }}">
    <meta name="theme-color" content="#3bb77e">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="csrf_token" content="{{ csrf_token() }}">
    <link rel="canonical" href="{{ $canonicalUrl }}">
    <link rel="sitemap" type="application/xml" href="{{ route('sitemap') }}">

    <meta property="og:locale" content="es_MX">
    <meta property="og:site_name" content="{{ $siteName }}">
    <meta property="og:title" content="{{ $pageTitle }}">
    <meta property="og:description" content="{{ $pageDescription }}">
    <meta property="og:type" content="@yield('og_type', 'website')">
    <meta property="og:url" content="{{ $canonicalUrl }}">
    <meta property="og:image" content="{{ $socialImage }}">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{ $pageTitle }}">
    <meta name="twitter:description" content="{{ $pageDescription }}">
    <meta name="twitter:image" content="{{ $socialImage }}">

    <link rel="icon" href="{{ asset(config('settings.favicon')) }}">
    <link rel="preconnect" href="https://fonts.bunny.net" crossorigin>
    <link rel="dns-prefetch" href="//cdnjs.cloudflare.com">
    <link rel="dns-prefetch" href="//cdn.jsdelivr.net">
    <link rel="stylesheet" href="https://fonts.bunny.net/css?family=lato:400,700,900&family=quicksand:400,500,600,700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
        integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/notyf@3/notyf.min.css">
    @if (request()->routeIs('kyc.*'))
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/css/bootstrap-datepicker.min.css"
            integrity="sha512-34s5cpvaNG3BknEWSuOncX28vz97bRI59UnVtEEpFX536A7BtZSJHsDyFoCl8S7Dt2TPzcrCEoHBGeM4SUBDBw=="
            crossorigin="anonymous" referrerpolicy="no-referrer">
    @endif
    @if (request()->routeIs('profile'))
        <link rel="stylesheet" href="{{ asset('assets/global/upload-preview/upload-preview.css') }}">
    @endif
    <link rel="stylesheet" href="{{ asset('assets/frontend/dist/css/vendors/normalize.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/dist/css/vendors/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/dist/css/vendors/uicons-regular-straight.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/dist/css/plugins/select2.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/dist/css/plugins/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/dist/css/plugins/animate.min.css') }}">
    @if (request()->routeIs('products.index'))
        <link rel="stylesheet" href="{{ asset('assets/frontend/dist/css/plugins/slider-range.css') }}">
    @endif
    <link rel="stylesheet" href="{{ asset('assets/frontend/dist/css/main.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/frontend/dist/css/accessibility.css') }}">
    @stack('head')
    @stack('styles')

    <script type="application/ld+json">
        {!! json_encode([
            '@context' => 'https://schema.org',
            '@type' => 'WebSite',
            'name' => $siteName,
            'url' => url('/'),
            'potentialAction' => [
                '@type' => 'SearchAction',
                'target' => route('products.index') . '?search={search_term_string}',
                'query-input' => 'required name=search_term_string',
            ],
        ], JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE) !!}
    </script>
    @yield('structured_data')
</head>

<body>
    <a class="skip-link" href="#main-content">Saltar al contenido principal</a>
    <div id="ui-status" class="visually-hidden" role="status" aria-live="polite" aria-atomic="true"></div>
    <div class="modal fade custom-modal" id="quickViewModal" tabindex="-1" aria-labelledby="quickViewModalLabel"
        aria-hidden="true"></div>
    @include('frontend.layouts.header')
    <main id="main-content" class="main" tabindex="-1">
        @yield('contents')
    </main>

    @include('frontend.layouts.footer')

    <script src="{{ asset('assets/frontend/dist/js/vendor/modernizr-3.6.0.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/dist/js/vendor/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/dist/js/vendor/jquery-migrate-3.3.0.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/dist/js/vendor/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/frontend/dist/js/plugins/slick.js') }}"></script>
    <script src="{{ asset('assets/frontend/dist/js/plugins/wow.js') }}"></script>
    <script src="{{ asset('assets/frontend/dist/js/plugins/select2.min.js') }}"></script>
    @if (request()->routeIs('home.index', 'flash-sales.index'))
        <script src="{{ asset('assets/frontend/dist/js/plugins/jquery.countdown.min.js') }}"></script>
    @endif
    <script src="{{ asset('assets/frontend/dist/js/plugins/scrollup.js') }}"></script>
    <script src="{{ asset('assets/frontend/dist/js/plugins/jquery.vticker-min.js') }}"></script>
    @if (request()->routeIs('products.index'))
        <script src="{{ asset('assets/frontend/dist/js/plugins/jquery.theia.sticky.js') }}"></script>
        <script src="{{ asset('assets/frontend/dist/js/plugins/slider-range.js') }}"></script>
    @endif
    <script src="{{ asset('assets/frontend/dist/js/plugins/jquery.elevatezoom.js') }}"></script>
    @if (request()->routeIs('profile'))
        <script src="{{ asset('assets/global/upload-preview/upload-preview.min.js') }}"></script>
    @endif
    @if (request()->routeIs('kyc.*'))
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/js/bootstrap-datepicker.min.js"
            integrity="sha512-LsnSViqQyaXpD4mBBdRYeP6sRwJiJveh2ZIbW41EBrNmKxgr/LFZIiWT6yr+nycvhvauz8c2nYMhrP80YhG7Cw=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    @endif
    <script src="https://cdn.jsdelivr.net/npm/notyf@3/notyf.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ asset('assets/frontend/dist/js/main.js') }}"></script>
    <script src="{{ asset('assets/frontend/dist/js/shop.js') }}"></script>
    <script src="{{ asset('assets/frontend/dist/js/frontend.js') }}"></script>
    @include('frontend.layouts.scripts')
    @stack('scripts')
</body>

</html>
