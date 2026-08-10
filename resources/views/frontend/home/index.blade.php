@extends('frontend.layouts.app')

@section('title', config('settings.site_name') . ' | Compra productos de vendedores locales')
@section('meta_description', config('settings.site_short_description') ?: 'Descubre productos, ofertas y vendedores en un solo marketplace.')

@if ($sliders->first()?->image)
    @push('head')
        <link rel="preload" as="image" href="{{ asset($sliders->first()->image) }}" fetchpriority="high">
    @endpush
@endif

@section('contents')
    <h1 class="visually-hidden">{{ config('settings.site_name') }}: marketplace de productos y vendedores</h1>
    @include('frontend.home.sections.hero-section')
    <!--End hero slider-->
    @include('frontend.home.sections.category-section')
    <!--End category slider-->
    @include('frontend.home.sections.banner-section')
    <!--End banners-->
    @include('frontend.home.sections.products-tab-section')
    <!--Products Tabs-->
    @include('frontend.home.sections.banner-section-two')
    <!--End 4 banners-->
    @include('frontend.home.sections.flash-sale-section')
    <!--End Best Sales-->
    @include('frontend.home.sections.new-arrival-section')
    <!-- new arrival end -->
    <section class="wsus__ctg mt-40">
        <div class="container">
            <a href="{{ data_get($ads, 'side_banner_two.0.url', '') }}" class="wsus__ctg_area">
                <img src="{{ asset(data_get($ads, 'side_banner_two.0.image', '')) }}" alt="{{ data_get($ads, 'side_banner_two.0.title', 'Promoción destacada') }}" class="img-fluid w-100" width="1320" height="300" loading="lazy" decoding="async" />
            </a>
        </div>
    </section>

    <!-- special products end -->
    @include('frontend.home.sections.four-col-products-section')
    <!--End 4 columns-->
@endsection
