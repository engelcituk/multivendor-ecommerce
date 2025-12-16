@php
    $ourFeatures = App\Models\OurFeature::whereStatus(true)->get();
    $socialLinks = App\Models\SocialLink::whereStatus(true)->get();
    $pages = App\Models\CustomPage::whereIsActive(true)->latest()->take(5)->get();
    $featuredCategories = App\Models\Category::withCount('products')->whereIsFeatured(true)->latest()->take(5)->get();
@endphp

<footer class="main pt-10">
    <section class="newsletter mb-15 wow animate__animated animate__fadeIn">
        <div class=" container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="newsletter_bg" style="background:url({{ asset('assets/frontend/dist/imgs/banner/banner-9.png') }});">
                        <div class="position-relative newsletter-inner">
                            <div class=" newsletter-content">
                                <h2 class="mb-20">Mantente a la Moda en Casa Compra <br> los Últimos Estilos Online</h2>
                                <p class="mb-45">Comienza tus Compras Diarias con <span
                                        class="text-brand">ShopX</span>
                                </p>
                                <form class="form-subcriber d-flex">
                                    @csrf
                                    <input type="email" placeholder="Tu dirección de correo electrónico" name="email" />
                                    <button class="btn" type="submit">Suscribirse</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="featured section-padding mt-45">
        <div class="container">
            <div class="row">
                @foreach($ourFeatures as $feature)
                <div class="col-xl-3 col-lg-4 col-12 col-sm-6">
                    <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                        data-wow-delay="0">
                        <div class="banner-icon">
                            <img src="{{ asset($feature->icon) }}" alt="" />
                        </div>
                        <div class="banner-text">
                            <h3 class="icon-box-title">{{ $feature->title }}</h3>
                            <p>{{ $feature->subtitle }}</p>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <section class="footer-mid pt-70 pb-65 mt-45">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-xl-3">
                    <div class="widget-about font-md mb-md-3 mb-lg-3 mb-xl-0 wow animate__animated animate__fadeInUp"
                        data-wow-delay="0">
                        <div class="logo mb-30">
                            <a href="{{ url('/') }}" class="mb-15"><img src="{{ asset(config('settings.site_logo')) }}"
                                    alt="logo" /></a>
                            <p class="font-lg text-heading">{{ config('settings.site_short_description') }}</p>
                        </div>
                        <ul class="contact-infor">
                            <li><img src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-location.svg') }}"
                                    alt="" /><strong>Dirección:
                                </strong> <span>{{ config('settings.site_address') }}</span>
                            </li>
                            <li><img src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-contact.svg') }}"
                                    alt="" /><strong>Llámanos:</strong><span>{{ config('settings.site_phone') }}</span></li>
                            <li><img src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-email-2.svg') }}"
                                    alt="" /><strong>Email:</strong><span>{{ config('settings.site_email') }}</span></li>
                            <li><img src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-clock.svg') }}"
                                    alt="" /><strong>Horario:</strong><span>{{ config('settings.site_hours') }}</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-2 col-sm-6 col-lg-3">
                    <div class="footer-link-widget wow animate__animated animate__fadeInUp"
                        data-wow-delay=".1s">
                        <h4 class="widget-title">Compañía</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            <li><a href="{{ route('login') }}">Iniciar Sesión</a></li>
                            <li><a href="{{ route('register') }}">Registrarse</a></li>
                            <li><a href="{{ route('register') }}">Conviértete en Vendedor</a></li>
                            <li><a href="{{ route('contact.index') }}">Contáctanos</a></li>
                            <li><a href="{{ route('flash-sales.index') }}">Ventas Flash</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-2 col-sm-6 col-lg-3">
                    <div class="footer-link-widget wow animate__animated animate__fadeInUp"
                        data-wow-delay=".2s">
                        <h4 class="widget-title">Más Enlaces</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            @foreach($pages as $page)
                            <li><a href="{{ route('custom-page.index', $page->slug ?? '') }}">{{ $page->title }}</a></li>
                            @endforeach

                        </ul>
                    </div>
                </div>
                <div class="col-xl-2 col-sm-6 col-lg-3">
                    <div class="footer-link-widget  wow animate__animated animate__fadeInUp"
                        data-wow-delay=".3s">
                        <h4 class="widget-title">Categorías Populares</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            @foreach($featuredCategories as $category)
                            <li><a href="{{ route('products.index', $category->slug ?? '') }}">{{ $category->name }}</a></li>
                            @endforeach

                        </ul>
                    </div>
                </div>

            </div>
    </section>
    <div class="container pb-30 wow animate__animated animate__fadeInUp" data-wow-delay="0">
        <div class="row align-items-center">
            <div class="col-12 mb-30">
                <div class="footer-bottom"></div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6">
                <p class="font-sm mb-0">&copy; {{ config('settings.site_copyright') }}</p>
            </div>
            <div class="col-xl-4 col-lg-6 text-center d-none d-xl-block">
                <div class="hotline d-lg-inline-flex">
                    <img src="{{ asset('assets/frontend/dist/imgs/theme/icons/phone-call.svg') }}" alt="Línea de atención" />
                    <p>{{ config('settings.site_phone') }}<span>Centro de Soporte 24/7</span></p>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6 text-end d-none d-md-block">
                <div class="mobile-social-icon">
                    <h6>Síguenos</h6>
                    @foreach($socialLinks as $link)
                    <a href="{{ $link->url }}"><img src="{{ asset($link->icon) }}"
                            alt="" /></a>
                    @endforeach

                </div>
                <p class="font-sm">Hasta 15% de descuento en tu primera suscripción</p>
            </div>
        </div>
    </div>
</footer>
