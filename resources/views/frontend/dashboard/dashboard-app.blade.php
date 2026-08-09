@extends('frontend.layouts.app')

@section('contents')
    <x-frontend.breadcrumb :items="[['label' => 'Home', 'url' => '/'], ['label' => 'Panel']]" />
    <div class="page-content pt-70 pb-60">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="row">
                        <div class="col-md-3 d-print-none">
                            <div class="dashboard-menu">
                                <ul class="nav flex-column" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link {{ setActive(['dashboard']) }}"
                                            href="{{ route('dashboard') }}"><i
                                                class="fi-rs-settings-sliders mr-10"></i>Panel</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link {{ setActive(['orders.*']) }}"
                                            href="{{ route('orders.index') }}"><i
                                                class="fi-rs-shopping-bag mr-10"></i>Pedidos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link {{ setActive(['purchased.*']) }}"
                                            href="{{ route('purchased.products') }}"><i
                                                class="fi-rs-shopping-bag mr-10"></i>Productos comprados</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link {{ setActive(['track.order.*']) }}"
                                            href="{{ route('track.order.index') }}"><i
                                                class="fi-rs-shopping-cart-check mr-10"></i>Rastrear tu pedido</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link {{ setActive(['reviews.*']) }}"
                                            href="{{ route('reviews.index') }}">
                                            <i class="fi fi-rs-star mr-10"></i> Reseñas</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link {{ setActive(['wishlist.index']) }}" href="{{ route('wishlist.index') }}">
                                            <i class="fi fi-rs-star mr-10"></i> Wishlist
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link {{ setActive(['address.*']) }}"
                                            href="{{ route('address.index') }}"><i class="fi-rs-marker mr-10"></i>My
                                            Dirección</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link {{ setActive(['profile']) }}" href="{{ route('profile') }}"><i
                                                class="fi-rs-user mr-10"></i>Account
                                            details</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" onclick="event.preventDefault(); $('.form-logout').submit()"
                                            href="login.html"><i class="fi-rs-sign-out mr-10"></i>Cerrar sesión</a>
                                    </li>
                                    <form class="form-logout" action="{{ route('logout') }}" method="POST">
                                        @csrf
                                    </form>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-content account dashboard-content pl-50">
                                @yield('dashboard_contents')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
