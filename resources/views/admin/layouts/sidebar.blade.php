<aside class="navbar navbar-vertical navbar-expand-lg d-print-none" data-bs-theme="dark">
    <div class="container-fluid">
        <!-- BEGIN NAVBAR TOGGLER -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar-menu"
            aria-controls="sidebar-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- END NAVBAR TOGGLER -->
        <!-- BEGIN NAVBAR LOGO -->
        <div class="navbar-brand navbar-brand-autodark">
            <a href="." aria-label="Tabler"><img style="width: 100px; background: #fafafa; padding: 10px; border-radius: 5px;" src="{{ asset(config('settings.site_logo')) }}" alt=""></a>
        </div>
        <!-- END NAVBAR LOGO -->
        <div class="navbar-nav flex-row d-lg-none">
            <div class="nav-item d-none d-lg-flex me-3">
                <div class="btn-list">
                    <a href="https://github.com/tabler/tabler" class="btn btn-5" target="_blank" rel="noreferrer">
                        <!-- Download SVG icon from http://tabler.io/icons/icon/brand-github -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="icon icon-2">
                            <path
                                d="M9 19c-4.3 1.4 -4.3 -2.5 -6 -3m12 5v-3.5c0 -1 .1 -1.4 -.5 -2c2.8 -.3 5.5 -1.4 5.5 -6a4.6 4.6 0 0 0 -1.3 -3.2a4.2 4.2 0 0 0 -.1 -3.2s-1.1 -.3 -3.5 1.3a12.3 12.3 0 0 0 -6.2 0c-2.4 -1.6 -3.5 -1.3 -3.5 -1.3a4.2 4.2 0 0 0 -.1 3.2a4.6 4.6 0 0 0 -1.3 3.2c0 4.6 2.7 5.7 5.5 6c-.6 .6 -.6 1.2 -.5 2v3.5" />
                        </svg>
                        Código fuente
                    </a>
                    <a href="https://github.com/sponsors/codecalm" class="btn btn-6" target="_blank"
                        rel="noreferrer">
                        <!-- Download SVG icon from http://tabler.io/icons/icon/heart -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="icon text-pink icon-2">
                            <path
                                d="M19.5 12.572l-7.5 7.428l-7.5 -7.428a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" />
                        </svg>
                        Patrocinar
                    </a>
                </div>
            </div>
            <div class="d-none d-lg-flex">
                <div class="nav-item">
                    <a href="?theme=dark" class="nav-link px-0 hide-theme-dark" title="Activar modo oscuro"
                        data-bs-toggle="tooltip" data-bs-placement="bottom">
                        <!-- Download SVG icon from http://tabler.io/icons/icon/moon -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="icon icon-1">
                            <path
                                d="M12 3c.132 0 .263 0 .393 0a7.5 7.5 0 0 0 7.92 12.446a9 9 0 1 1 -8.313 -12.454z" />
                        </svg>
                    </a>
                    <a href="?theme=light" class="nav-link px-0 hide-theme-light" title="Activar modo claro"
                        data-bs-toggle="tooltip" data-bs-placement="bottom">
                        <!-- Download SVG icon from http://tabler.io/icons/icon/sun -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="icon icon-1">
                            <path d="M12 12m-4 0a4 4 0 1 0 8 0a4 4 0 1 0 -8 0" />
                            <path
                                d="M3 12h1m8 -9v1m8 8h1m-9 8v1m-6.4 -15.4l.7 .7m12.1 -.7l-.7 .7m0 11.4l.7 .7m-12.1 -.7l-.7 .7" />
                        </svg>
                    </a>
                </div>
                <div class="nav-item dropdown d-none d-md-flex">
                    <a href="#" class="nav-link px-0" data-bs-toggle="dropdown" tabindex="-1"
                        aria-label="Show notifications" data-bs-auto-close="outside" aria-expanded="false">
                        <!-- Download SVG icon from http://tabler.io/icons/icon/bell -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="icon icon-1">
                            <path
                                d="M10 5a2 2 0 1 1 4 0a7 7 0 0 1 4 6v3a4 4 0 0 0 2 3h-16a4 4 0 0 0 2 -3v-3a7 7 0 0 1 4 -6" />
                            <path d="M9 17v1a3 3 0 0 0 6 0v-1" />
                        </svg>
                        <span class="badge bg-red"></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-end dropdown-menu-card">
                        <div class="card">
                            <div class="card-header d-flex">
                                <h3 class="card-title">Notificaciones</h3>
                                <div class="btn-close ms-auto" data-bs-dismiss="dropdown"></div>
                            </div>
                            <div class="list-group list-group-flush list-group-hoverable">
                                <div class="list-group-item">
                                    <div class="row align-items-center">
                                        <div class="col-auto"><span
                                                class="status-dot status-dot-animated bg-red d-block"></span>
                                        </div>
                                        <div class="col text-truncate">
                                            <a href="#" class="text-body d-block">Ejemplo 1</a>
                                            <div class="d-block text-secondary text-truncate mt-n1">
                                                Cambiar etiquetas HTML obsoletas por clases de decoración de texto (#29604)
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <a href="#" class="list-group-item-actions">
                                                <!-- Download SVG icon from http://tabler.io/icons/icon/star -->
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                    height="24" viewBox="0 0 24 24" fill="none"
                                                    stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon text-muted icon-2">
                                                    <path
                                                        d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item">
                                    <div class="row align-items-center">
                                        <div class="col-auto"><span class="status-dot d-block"></span></div>
                                        <div class="col text-truncate">
                                            <a href="#" class="text-body d-block">Ejemplo 2</a>
                                            <div class="d-block text-secondary text-truncate mt-n1">
                                                justify-content:between ⇒ justify-content:space-between (#29734)
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <a href="#" class="list-group-item-actions show">
                                                <!-- Download SVG icon from http://tabler.io/icons/icon/star -->
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                    height="24" viewBox="0 0 24 24" fill="none"
                                                    stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon text-yellow icon-2">
                                                    <path
                                                        d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item">
                                    <div class="row align-items-center">
                                        <div class="col-auto"><span class="status-dot d-block"></span></div>
                                        <div class="col text-truncate">
                                            <a href="#" class="text-body d-block">Ejemplo 3</a>
                                            <div class="d-block text-secondary text-truncate mt-n1">
                                                Actualizar change-version.js (#29736)
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <a href="#" class="list-group-item-actions">
                                                <!-- Download SVG icon from http://tabler.io/icons/icon/star -->
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                    height="24" viewBox="0 0 24 24" fill="none"
                                                    stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon text-muted icon-2">
                                                    <path
                                                        d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item">
                                    <div class="row align-items-center">
                                        <div class="col-auto"><span
                                                class="status-dot status-dot-animated bg-green d-block"></span>
                                        </div>
                                        <div class="col text-truncate">
                                            <a href="#" class="text-body d-block">Ejemplo 4</a>
                                            <div class="d-block text-secondary text-truncate mt-n1">
                                                Regenerar package-lock.json (#29730)
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <a href="#" class="list-group-item-actions">
                                                <!-- Download SVG icon from http://tabler.io/icons/icon/star -->
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                    height="24" viewBox="0 0 24 24" fill="none"
                                                    stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon text-muted icon-2">
                                                    <path
                                                        d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <a href="#" class="btn btn-2 w-100"> Archivar todo </a>
                                    </div>
                                    <div class="col">
                                        <a href="#" class="btn btn-2 w-100"> Marcar todo como leído </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link d-flex lh-1 p-0 px-2" data-bs-toggle="dropdown"
                    aria-label="Open user menu">
                    <span class="avatar avatar-sm" style="background-image: url(./static/avatars/000m.jpg)">
                    </span>
                    <div class="d-none d-xl-block ps-2">
                        <div>Paweł Kuna</div>
                        <div class="mt-1 small text-secondary">Diseñador UI</div>
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <a href="#" class="dropdown-item">Estado</a>
                    <a href="./profile.html" class="dropdown-item">Perfil</a>
                    <a href="#" class="dropdown-item">Comentarios</a>
                    <div class="dropdown-divider"></div>
                    <a href="./settings.html" class="dropdown-item">Configuración</a>
                    <a href="./sign-in.html" class="dropdown-item">Cerrar sesión</a>
                </div>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="sidebar-menu">
            <!-- BEGIN NAVBAR MENU -->
            <ul class="navbar-nav pt-lg-3">
                <li class="nav-item {{ setActive(['admin.dashboard']) }}">
                    <a class="nav-link {{ setActive(['admin.dashboard']) }}"
                        href="{{ route('admin.dashboard') }}">
                        <span class="nav-link-icon d-md-none d-lg-inline-block"><i
                                class="ti ti-flame"></i></span>
                        <span class="nav-link-title"> Panel </span>
                    </a>
                </li>

                @if (hasPermission(['KYC Management']))
                    <li class="nav-item dropdown {{ setActive(['admin.kyc.*']) }}">
                        <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown"
                            data-bs-auto-close="false" role="button" aria-expanded="false">
                            <span class="nav-link-icon d-md-none d-lg-inline-block">
                                <i class="ti ti-user-check"></i>
                            </span>
                            <span class="nav-link-title"> Solicitudes KYC </span>
                        </a>
                        <div class="dropdown-menu {{ setActive(['admin.kyc.*'], 'show') }}">
                            <div class="dropdown-menu-columns">
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.kyc.index']) }}"
                                        href="{{ route('admin.kyc.index') }}">
                                        Todas las solicitudes
                                    </a>
                                    <a class="dropdown-item {{ setActive(['admin.kyc.pending']) }}"
                                        href="{{ route('admin.kyc.pending') }}">
                                        Solicitudes pendientes
                                    </a>
                                    <a class="dropdown-item {{ setActive(['admin.kyc.rejected']) }}"
                                        href="{{ route('admin.kyc.rejected') }}">
                                        Solicitudes rechazadas
                                    </a>

                                </div>

                            </div>
                        </div>
                    </li>
                @endif
                @if (hasPermission(['Category Management', 'Tags Management', 'Brand Management']))
                    <li
                        class="nav-item dropdown {{ setActive(['admin.products.*', 'admin.categories.*', 'admin.brands.*', 'admin.tags.*', 'admin.reviews.*']) }}">
                        <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown"
                            data-bs-auto-close="false" role="button" aria-expanded="false">
                            <span class="nav-link-icon d-md-none d-lg-inline-block">
                                <i class="ti ti-box"></i>
                            </span>
                            <span class="nav-link-title"> Gestionar productos </span>
                        </a>
                        <div
                            class="dropdown-menu {{ setActive(['admin.products.*', 'admin.categories.*', 'admin.brands.*', 'admin.tags.*', 'admin.reviews.*'], 'show') }}">
                            <div class="dropdown-menu-columns">
                                @if (hasPermission(['Category Management']))
                                    <div class="dropdown-menu-column">
                                        <a class="dropdown-item {{ setActive(['admin.products.*']) }}"
                                            href="{{ route('admin.products.index') }}">
                                            Productos
                                        </a>
                                    </div>
                                @endif


                                @if (hasPermission(['Category Management']))
                                    <div class="dropdown-menu-column">
                                        <a class="dropdown-item {{ setActive(['admin.categories.*']) }}"
                                            href="{{ route('admin.categories.index') }}">
                                            Categorías
                                        </a>
                                    </div>
                                @endif

                                @if (hasPermission(['Tags Management']))
                                    <div class="dropdown-menu-column">
                                        <a class="dropdown-item {{ setActive(['admin.tags.*']) }}"
                                            href="{{ route('admin.tags.index') }}">
                                            Etiquetas de productos
                                        </a>
                                    </div>
                                @endif

                                @if (hasPermission(['Brand Management']))
                                    <div class="dropdown-menu-column">
                                        <a class="dropdown-item {{ setActive(['admin.brands.*']) }}"
                                            href="{{ route('admin.brands.index') }}">
                                            Marcas
                                        </a>
                                    </div>
                                @endif




                                @if (hasPermission(['Brand Management']))
                                    <div class="dropdown-menu-column">
                                        <a class="dropdown-item {{ setActive(['admin.reviews.*']) }}"
                                            href="{{ route('admin.reviews.index') }}">
                                            Reseñas
                                        </a>
                                    </div>
                                @endif

                            </div>
                        </div>
                    </li>
                @endif

                @if (hasPermission(['Order Management']))
                    <li class="nav-item dropdown {{ setActive(['admin.orders.*']) }}">
                        <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown"
                            data-bs-auto-close="false" role="button" aria-expanded="false">
                            <span class="nav-link-icon d-md-none d-lg-inline-block">
                                <i class="ti ti-shopping-bag-plus"></i>
                            </span>
                            <span class="nav-link-title"> Pedidos </span>
                        </a>
                        <div class="dropdown-menu {{ setActive(['admin.orders.*'], 'show') }}">
                            <div class="dropdown-menu-columns">
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item" href="{{ route('admin.orders.index') }}">
                                        Todos los pedidos
                                    </a>
                                </div>
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item"
                                        href="{{ route('admin.orders.index', ['status' => 'pending']) }}">
                                        Pedidos pendientes
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item"
                                        href="{{ route('admin.orders.index', ['status' => 'processed']) }}">
                                        Pedidos procesados
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item"
                                        href="{{ route('admin.orders.index', ['status' => 'packed']) }}">
                                        Pedidos empacados
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item"
                                        href="{{ route('admin.orders.index', ['status' => 'shipped']) }}">
                                        Pedidos enviados
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item"
                                        href="{{ route('admin.orders.index', ['status' => 'in_transit']) }}">
                                        En tránsito
                                    </a>
                                </div>
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item"
                                        href="{{ route('admin.orders.index', ['status' => 'out_for_delivery']) }}">
                                        En reparto
                                    </a>
                                </div>
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item"
                                        href="{{ route('admin.orders.index', ['status' => 'delivered']) }}">
                                        Entregado
                                    </a>
                                </div>
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item"
                                        href="{{ route('admin.orders.index', ['status' => 'canceled']) }}">
                                        Cancelado
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                @endif

                @if (hasPermission(['Ecommerce Management']))
                    <li
                        class="nav-item dropdown {{ setActive(['admin.flash-sales.*', 'admin.coupons.*', 'admin.shipping-rules.*']) }}">
                        <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown"
                            data-bs-auto-close="false" role="button" aria-expanded="false">
                            <span class="nav-link-icon d-md-none d-lg-inline-block">
                                <i class="ti ti-dashboard"></i>
                            </span>
                            <span class="nav-link-title"> Comercio electrónico </span>
                        </a>
                        <div
                            class="dropdown-menu {{ setActive(['admin.flash-sales.*', 'admin.coupons.*', 'admin.shipping-rules.*'], 'show') }}">
                            <div class="dropdown-menu-columns">
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.flash-sales.*']) }}"
                                        href="{{ route('admin.flash-sales.index') }}">
                                        Ofertas relámpago
                                    </a>
                                </div>
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.coupons.*']) }}"
                                        href="{{ route('admin.coupons.index') }}">
                                        Cupones
                                    </a>
                                </div>
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.shipping-rules.*']) }}"
                                        href="{{ route('admin.shipping-rules.index') }}">
                                        Reglas de envío
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                @endif

                @if (hasPermission(['Section Management']))
                    <li
                        class="nav-item dropdown {{ setActive(['admin.offer-sliders.*', 'admin.sliders.*', 'admin.hero-banners.*', 'admin.popular-categories.*', 'admin.product-sections.*', 'admin.our-features.*', 'admin.social-links.*']) }}">
                        <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown"
                            data-bs-auto-close="false" role="button" aria-expanded="false">
                            <span class="nav-link-icon d-md-none d-lg-inline-block">
                                <i class="ti ti-layout-dashboard"></i>
                            </span>
                            <span class="nav-link-title"> Gestionar secciones </span>
                        </a>
                        <div
                            class="dropdown-menu {{ setActive(['admin.offer-sliders.*', 'admin.sliders.*', 'admin.hero-banners.*', 'admin.popular-categories.*', 'admin.product-sections.*', 'admin.our-features.*', 'admin.social-links.*'], 'show') }}">
                            <div class="dropdown-menu-columns">

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.offer-sliders.*']) }}"
                                        href="{{ route('admin.offer-sliders.index') }}">
                                        Slider de ofertas
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.sliders.*']) }}"
                                        href="{{ route('admin.sliders.index') }}">
                                        Sliders
                                    </a>
                                </div>
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.hero-banners.*']) }}"
                                        href="{{ route('admin.hero-banners.index') }}">
                                        Banners principales
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.popular-categories.*']) }}"
                                        href="{{ route('admin.popular-categories.index') }}">
                                        Productos por categoría popular
                                    </a>
                                </div>
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.product-sections.*']) }}"
                                        href="{{ route('admin.product-sections.index') }}">
                                        Sección de productos
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.our-features.*']) }}"
                                        href="{{ route('admin.our-features.index') }}">
                                        Nuestras características
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.social-links.*']) }}"
                                        href="{{ route('admin.social-links.index') }}">
                                        Enlaces sociales
                                    </a>
                                </div>

                            </div>
                        </div>
                    </li>
                @endif
                @if (hasPermission(['Subscriber Management']))
                    <li class="nav-item">
                        <a class="nav-link {{ setActive(['admin.subscribers.*']) }}"
                            href="{{ route('admin.subscribers.index') }}">
                            <span class="nav-link-icon d-md-none d-lg-inline-block"><i
                                    class="ti ti-news"></i></span>
                            <span class="nav-link-title"> Suscriptores </span>
                        </a>
                    </li>
                @endif


                @if (hasPermission(['Withdraw Management']))
                    <li
                        class="nav-item dropdown {{ setActive(['admin.withdraw-methods.*', 'admin.withdraw-requests.*']) }}">
                        <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown"
                            data-bs-auto-close="false" role="button" aria-expanded="false">
                            <span class="nav-link-icon d-md-none d-lg-inline-block">
                                <i class="ti ti-currency-dollar"></i>
                            </span>
                            <span class="nav-link-title"> Retiros </span>
                        </a>
                        <div
                            class="dropdown-menu {{ setActive(['admin.withdraw-methods.*', 'admin.withdraw-requests.*'], 'show') }}">
                            <div class="dropdown-menu-columns">
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.withdraw-methods.*']) }}"
                                        href="{{ route('admin.withdraw-methods.index') }}">
                                        Métodos de retiro
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.withdraw-requests.*']) }}"
                                        href="{{ route('admin.withdraw-requests.index') }}">
                                        Solicitudes de retiro
                                    </a>
                                </div>

                            </div>
                        </div>
                    </li>
                @endif


                @if (hasPermission(['Page Management']))
                    <li class="nav-item">
                        <a class="nav-link {{ setActive(['admin.custom-pages.*']) }}"
                            href="{{ route('admin.custom-pages.index') }}">
                            <span class="nav-link-icon d-md-none d-lg-inline-block"><i
                                    class="ti ti-ruler"></i></span>
                            <span class="nav-link-title"> Constructor de páginas </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['Advertisement Management']))
                    <li class="nav-item {{ setActive(['admin.banners.*']) }}">
                        <a class="nav-link" href="{{ route('admin.banners.index') }}">
                            <span class="nav-link-icon d-md-none d-lg-inline-block"><i
                                    class="ti ti-ad"></i></span>
                            <span class="nav-link-title"> Publicidad </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['Contact Management']))
                    <li
                        class="nav-item dropdown {{ setActive(['admin.contact-settings.*', 'admin.contact-messages.*']) }}">
                        <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown"
                            data-bs-auto-close="false" role="button" aria-expanded="false">
                            <span class="nav-link-icon d-md-none d-lg-inline-block">
                                <i class="ti ti-address-book"></i>
                            </span>
                            <span class="nav-link-title"> Contacto </span>
                        </a>
                        <div
                            class="dropdown-menu {{ setActive(['admin.contact-settings.*', 'admin.contact-messages.*'], 'show') }}">
                            <div class="dropdown-menu-columns">
                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.contact-settings.*']) }}"
                                        href="{{ route('admin.contact-settings.index') }}">
                                        Configuración de contacto
                                    </a>
                                </div>

                                <div class="dropdown-menu-column">
                                    <a class="dropdown-item {{ setActive(['admin.contact-messages.*']) }}"
                                        href="{{ route('admin.contact-messages.index') }}">
                                        Mensajes de contacto
                                    </a>
                                </div>

                            </div>
                        </div>
                    </li>
                @endif



                @if (hasPermission(['Payment Setting']))
                    <li class="nav-item">
                        <a class="nav-link {{ setActive(['admin.payment-settings.*']) }}"
                            href="{{ route('admin.payment-settings.index') }}">
                            <span class="nav-link-icon d-md-none d-lg-inline-block"><i
                                    class="ti ti-receipt-dollar"></i></span>
                            <span class="nav-link-title"> Configuración de pagos </span>
                        </a>
                    </li>
                @endif

                @if (hasPermission(['Role Management', 'Role User Management']))
                    <li class="nav-item dropdown {{ setActive(['admin.role.*', 'admin.role-users.*']) }}">
                        <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown"
                            data-bs-auto-close="false" role="button" aria-expanded="false">
                            <span class="nav-link-icon d-md-none d-lg-inline-block">
                                <i class="ti ti-shield"></i>
                            </span>
                            <span class="nav-link-title"> Gestión de accesos </span>
                        </a>
                        <div
                            class="dropdown-menu {{ setActive(['admin.role.*', 'admin.role-users.*'], 'show') }}">
                            <div class="dropdown-menu-columns">
                                @if (hasPermission(['Role Management']))
                                    <div class="dropdown-menu-column">
                                        <a class="dropdown-item {{ setActive(['admin.role.*']) }}"
                                            href="{{ route('admin.role.index') }}">
                                            Rol
                                        </a>
                                    </div>
                                @endif

                                @if (hasPermission(['Role User Management']))
                                    <div class="dropdown-menu-column">
                                        <a class="dropdown-item {{ setActive(['admin.role-users.*']) }}"
                                            href="{{ route('admin.role-users.index') }}">
                                            Usuarios por rol
                                        </a>
                                    </div>
                                @endif

                            </div>
                        </div>
                    </li>
                @endif

                @if (hasPermission(['Settings Management']))
                    <li class="nav-item">
                        <a class="nav-link {{ setActive(['admin.settings.*']) }}"
                            href="{{ route('admin.database-clear.index') }}">
                            <span class="nav-link-icon d-md-none d-lg-inline-block"><i class="ti ti-skull"></i></span>
                            <span class="nav-link-title"> Limpieza de base de datos </span>
                        </a>
                    </li>
                @endif


                @if (hasPermission(['Settings Management']))
                    <li class="nav-item">
                        <a class="nav-link {{ setActive(['admin.settings.*']) }}"
                            href="{{ route('admin.settings.index') }}">
                            <span class="nav-link-icon d-md-none d-lg-inline-block"><i
                                    class="ti ti-settings"></i></span>
                            <span class="nav-link-title"> Configuración </span>
                        </a>
                    </li>
                @endif




            </ul>
            <!-- END NAVBAR MENU -->
        </div>
    </div>
</aside>


<header class="navbar navbar-expand-md d-none d-lg-flex d-print-none">
    <div class="container-xl">
        <!-- BEGIN NAVBAR TOGGLER -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu"
            aria-controls="navbar-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- END NAVBAR TOGGLER -->
        <div class="navbar-nav flex-row order-md-last">
            <div class="d-none d-md-flex">
                <div class="nav-item">
                    <a href="?theme=dark" class="nav-link px-0 hide-theme-dark" data-bs-toggle="tooltip"
                        data-bs-placement="bottom" aria-label="Activar modo oscuro"
                        data-bs-original-title="Activar modo oscuro">
                        <!-- Download SVG icon from http://tabler.io/icons/icon/moon -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="icon icon-1">
                            <path
                                d="M12 3c.132 0 .263 0 .393 0a7.5 7.5 0 0 0 7.92 12.446a9 9 0 1 1 -8.313 -12.454z">
                            </path>
                        </svg>
                    </a>
                    <a href="?theme=light" class="nav-link px-0 hide-theme-light" data-bs-toggle="tooltip"
                        data-bs-placement="bottom" aria-label="Activar modo claro"
                        data-bs-original-title="Activar modo claro">
                        <!-- Download SVG icon from http://tabler.io/icons/icon/sun -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" class="icon icon-1">
                            <path d="M12 12m-4 0a4 4 0 1 0 8 0a4 4 0 1 0 -8 0"></path>
                            <path
                                d="M3 12h1m8 -9v1m8 8h1m-9 8v1m-6.4 -15.4l.7 .7m12.1 -.7l-.7 .7m0 11.4l.7 .7m-12.1 -.7l-.7 .7">
                            </path>
                        </svg>
                    </a>
                </div>
                {{-- <div class="nav-item dropdown d-none d-md-flex">
                    ...
                </div> --}}
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link d-flex lh-1 p-0 px-2" data-bs-toggle="dropdown"
                    aria-label="Open user menu">
                    <span class="avatar avatar-sm"
                        style="background-image: url({{ asset(auth('admin')->user()->avatar) }})">
                    </span>
                    <div class="d-none d-xl-block ps-2">
                        <div>{{ auth('admin')->user()->name }}</div>
                        <div class="mt-1 small text-secondary">
                            {{ auth('admin')->user()?->getRoleNames()?->first() }}</div>
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <a href="{{ route('admin.profile.index') }}" class="dropdown-item">Perfil</a>
                    <div class="dropdown-divider"></div>
                    <a href="{{ route('admin.settings.index') }}" class="dropdown-item">Configuración</a>
                    <a onclick="event.preventDefault();
                        $('.logout-form').submit();"
                        href="" class="dropdown-item">Cerrar sesión</a>
                    <form method="POST" action="{{ route('admin.logout') }}" class="logout-form">
                        @csrf
                    </form>
                </div>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbar-menu">
            <!-- BEGIN NAVBAR MENU -->

            <!-- END NAVBAR MENU -->
        </div>
    </div>
</header>
