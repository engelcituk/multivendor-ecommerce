@php
    $customPages = \App\Models\CustomPage::where('is_active', true)->get();
    $offerSliders = \App\Models\OfferSlider::where('is_active', true)->get();
@endphp

<header class="header-area header-style-1 header-style-5 header-height-2 d-print-none">


    <div class="mobile-promotion">
        <div id="news-flash-mobile" class="d-inline-block">
            <ul>
                @foreach ($offerSliders as $offerSlider)
                    <li><a href="{{ $offerSlider->url }}" class="text-dark">{{ $offerSlider->title }}</a></li>
                @endforeach
            </ul>
        </div>
    </div>

    <div class="header-top header-top-ptb-1 d-none d-lg-block">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xxl-3 col-xl-4 col-lg-7">
                    <div class="header-info">
                        <ul>
                            <li><a href="{{ route('dashboard') }}">Mi Cuenta</a></li>
                            <li><a href="{{ route('wishlist.index') }}">Lista de Deseos</a></li>
                            <li><a href="{{ route('track.order.index') }}">Seguimiento de Pedido</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xxl-6 col-xl-5 col-lg-4 d-none d-xl-block">
                    <div class="text-center">
                        <div id="news-flash" class="d-inline-block">
                            <ul>
                                @foreach ($offerSliders as $offerSlider)
                                    <li><a href="{{ $offerSlider->url }}"
                                            class="text-dark">{{ $offerSlider->title }}</a></li>
                                @endforeach

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-xl-3 col-lg-5">
                    <div class="header-info header-info-right">
                        <ul>
                            <li>¿Necesitas ayuda? Llámanos: <strong class="text-brand">
                                    {{ config('settings.site_phone') }}</strong></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-middle header-middle-ptb-1 d-none d-lg-block">
        <div class="container">
            <div class="header-wrap">
                <div class="logo logo-width-1">
                    <a href="{{ url('/') }}"><img src="{{ asset(config('settings.site_logo')) }}"
                            alt="logo" /></a>
                </div>
                <div class="header-right">
                    <div class="search-style-2">
                        <form action="{{ route('products.index') }}">
                            <select class="select-active" name="category">
                                <option value="">Todas las Categorías</option>
                                @foreach (getNestedCategories() as $category)
                                    <option @selected(request('category') == $category->slug) value="{{ $category->slug }}">
                                        {{ $category->name }}</option>
                                @endforeach

                            </select>
                            <input type="text" name="search" placeholder="Buscar artículos..."
                                value="{{ request('search') }}" />
                        </form>
                    </div>
                    <div class="header-action-right">
                        <div class="header-action-2">

                            <div class="header-action-icon-2">
                                <a href="#">
                                    <img class="svgInject" alt="ShopX"
                                        src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-heart.svg') }}" />
                                    <span class="pro-count blue">{{ wishlistCount() }}</span>
                                </a>
                                <a href="{{ route('wishlist.index') }}"><span class="lable">Lista de Deseos</span></a>
                            </div>
                            <div class="header-action-icon-2">
                                <a class="mini-cart-icon" href="#">
                                    <img alt="ShopX"
                                        src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-cart.svg') }}" />
                                    <span class="pro-count blue cart-count">{{ cartCount() }}</span>
                                </a>
                                <a href="{{ route('cart.index') }}"><span class="lable">Carrito</span></a>

                            </div>
                            <div class="header-action-icon-2">
                                <a href="{{ route('login') }}">
                                    <img class="svgInject" alt="ShopX"
                                        src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-user.svg') }}" />
                                </a>
                                <a href=""><span class="lable ml-0">Cuenta</span></a>
                                @if (Auth::guard('web')->check())
                                    <div class="cart-dropdown-wrap cart-dropdown-hm2 account-dropdown">
                                        <ul>
                                            <li>
                                                <a href="{{ route('dashboard') }}"><i
                                                        class="fi fi-rs-user mr-10"></i>Panel de Control</a>
                                            </li>
                                            <li>
                                                <a href="{{ route('profile') }}"><i class="fi fi-rs-user mr-10"></i>Mi
                                                    Cuenta</a>
                                            </li>
                                            <li>
                                                <a href="{{ route('orders.index') }}"><i
                                                        class="fi fi-rs-location-alt mr-10"></i>Seguimiento de
                                                    Pedidos</a>
                                            </li>
                                            <li>
                                                <a href="{{ route('wishlist.index') }}"><i
                                                        class="fi fi-rs-heart mr-10"></i>Mi Lista de Deseos</a>
                                            </li>
                                            <li>
                                                <a href="#"
                                                    onclick="event.preventDefault(); $('.form-logout').submit()"><i
                                                        class="fi fi-rs-sign-out mr-10"></i>Cerrar Sesión</a>
                                            </li>
                                            <form class="form-logout" action="{{ route('logout') }}" method="POST">
                                                @csrf
                                            </form>
                                        </ul>
                                    </div>
                                @else
                                    <div class="cart-dropdown-wrap cart-dropdown-hm2 account-dropdown">
                                        <ul>
                                            <li>
                                                <a href="{{ route('login') }}"><i
                                                        class="fi fi-rs-user mr-10"></i>Iniciar Sesión</a>
                                            </li>
                                            <li>
                                                <a href="{{ route('register') }}"><i
                                                        class="fi fi-rs-user mr-10"></i>Registrarse</a>
                                            </li>

                                        </ul>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom header-bottom-bg-color sticky-bar">
        <div class="container">
            <div class="header-wrap header-space-between position-relative">
                <div class="logo logo-width-1 d-block d-lg-none">
                    <a href="{{ url('/') }}"><img src="{{ asset(config('settings.site_logo')) }}" alt="logo" /></a>
                </div>
                <div class="header-nav d-none d-lg-flex">
                    <div class="main-categori-wrap d-none d-lg-block">
                        <a class="categories-button-active" href="#">
                            <span class="fi-rs-apps"></span> Categorías Populares
                            <i class="fi-rs-angle-down"></i>
                        </a>
                        <div
                            class="categories-dropdown-wrap style-2 font-heading categories-dropdown-active-large font-heading">
                            <div class="d-flex categori-dropdown-inner">
                                <ul>
                                    @foreach (getNestedCategories() as $category)
                                        @if($loop->iteration <= 11)
                                        <li>
                                            <a href="{{ route('products.index', ['category' => $category->slug]) }}">
                                                <img src="{{ asset($category->icon) }}" alt="" />
                                                <span>{{ $category->name }}</span>
                                            </a>
                                            @if (count($category->children_nested) > 0)
                                                <ul>
                                                    @foreach ($category->children_nested as $child)
                                                        <li
                                                            class="{{ count($child->children_nested) > 0 ? '' : 'no_child' }}">
                                                            <a
                                                                href="{{ route('products.index', ['category' => $child->slug]) }}">{{ $child->name }}</a>
                                                            @if (count($child->children_nested) > 0)
                                                                <ul>
                                                                    @foreach ($child->children_nested as $subchild)
                                                                        <li class="no_child">
                                                                            <a
                                                                                href="{{ route('products.index', ['category' => $subchild->slug]) }}">{{ $subchild->name }}</a>
                                                                        </li>
                                                                    @endforeach
                                                                </ul>
                                                            @endif
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            @endif
                                        </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                            <a href="#" class="more_categories">
                                ver todo
                                <i class="fa-solid fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block font-heading">
                        <nav>
                            <ul>
                                <li>
                                    <a class="active" href="{{ url('/') }}">Inicio</a>
                                </li>

                                <li>
                                    <a href="{{ route('products.index') }}">Productos</a>
                                </li>

                                <li>
                                    <a href="{{ route('vendors.index') }}">Vendedores</a>
                                </li>


                                <li class="hot-deals">
                                    <a href="{{ route('flash-sales.index') }}">Venta Flash</a>
                                </li>

                                <li>
                                    <a href="{{ route('contact.index') }}">Contacto</a>
                                </li>

                                @foreach ($customPages as $page)
                                    <li class="hot-deals">
                                        <a
                                            href="{{ route('custom-page.index', ['slug' => $page->slug]) }}">{{ $page->title }}</a>
                                    </li>
                                @endforeach

                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="hotline d-none d-lg-flex">
                    <img src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-headphone-white.svg') }}"
                        alt="Línea de atención" />
                    <p>{{ config('settings.site_phone') }}<span>Soporte 24/7</span></p>
                </div>
                <div class="header-action-icon-2 d-block d-lg-none">
                    <div class="burger-icon burger-icon-white">
                        <span class="burger-icon-top"></span>
                        <span class="burger-icon-mid"></span>
                        <span class="burger-icon-bottom"></span>
                    </div>
                </div>
                <div class="header-action-right d-block d-lg-none">
                    <div class="header-action-2">
                        <div class="header-action-icon-2">
                            <a href="{{ route('wishlist.index') }}">
                                <img alt="ShopX"
                                    src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-heart.svg') }}" />
                                <span class="pro-count white">{{ wishlistCount() }}</span>
                            </a>
                        </div>
                        <div class="header-action-icon-2">
                            <a class="mini-cart-icon" href="{{ route('cart.index') }}">
                                <img alt="ShopX"
                                    src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-cart.svg') }}" />
                                <span class="pro-count white cart-count">{{ cartCount() }}</span>
                            </a>
                        </div>
                        <div class="header-action-icon-2">
                            <a class="mini-cart-icon" href="{{ route('login') }}">
                                <img alt="ShopX" src="{{ asset('assets/frontend/dist/imgs/theme/icons/icon-user.svg') }}" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="mobile-header-active mobile-header-wrapper-style">
    <div class="mobile-header-wrapper-inner">
        <div class="mobile-header-top">
            <div class="mobile-header-logo">
                <a href="{{ url('/') }}"><img src="{{ asset(config('settings.site_logo')) }}"
                        alt="logo" /></a>
            </div>
            <div class="mobile-menu-close close-style-wrap close-style-position-inherit">
                <button class="close-style search-close">
                    <i class="icon-top"></i>
                    <i class="icon-bottom"></i>
                </button>
            </div>
        </div>
        <div class="mobile-header-content-area">
            <div class="mobile-search search-style-3 mobile-header-border">
                <form action="{{ route('products.index') }}">
                    <input type="text" placeholder="Buscar artículos..." name="search" />
                    <button type="submit"><i class="fi-rs-search"></i></button>
                </form>
            </div>
            <div class="mobile-menu-wrap mobile-header-border">
                <nav>
                    <ul class="mobile-menu font-heading">
                        <li class="">
                            <a href="{{ route('home.index') }}">Inicio</a>
                        </li>

                        <li class="">
                            <a href="{{ route('products.index') }}">Productos</a>
                        </li>
                        <li class="">
                            <a href="{{ route('vendors.index') }}">Vendedores</a>
                        </li>
                        <li class="">
                            <a href="{{ route('flash-sales.index') }}">Venta Flash</a>
                        </li>
                        <li class="">
                            <a href="{{ route('contact.index') }}">Contacto</a>
                        </li>

                        <li class="menu-item-has-children">
                            <a href="index.html">Categorías</a>
                            <ul class="dropdown">
                                @foreach (getNestedCategories() as $category)
                                    <li><a
                                            href="{{ route('products.index', ['category' => $category->slug]) }}">{{ $category->name }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </li>

                    </ul>
                </nav>
                </div>
            @php
                $socialLinks = App\Models\SocialLink::whereStatus(true)->get();
            @endphp
            <div class="mobile-social-icon mb-50">
                <h6 class="mb-15">Síguenos</h6>
                @foreach ($socialLinks as $socialLink)
                    <a href="{{ $socialLink->url }}"><img src="{{ asset($socialLink->icon) }}"
                            alt="" /></a>
                @endforeach
            </div>
            <div class="site-copyright">{{ config('settings.site_copyright') }}</div>
        </div>
    </div>
</div>
