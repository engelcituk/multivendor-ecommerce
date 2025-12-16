<!doctype html>

<html lang="es">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Iniciar sesión</title>
    <link href="{{ asset('assets/admin/dist/css/tabler.css') }}" rel="stylesheet" />
    <style>
        @import url("https://rsms.me/inter/inter.css");
    </style>
    </head>

<body>
    <div class="page page-center">
        <div class="container container-tight py-4">
            <div class="text-center mb-4">
                <a href="javascript:;" aria-label="Tabler" class="navbar-brand navbar-brand-autodark"><img
                        src="{{ asset(config('settings.site_logo')) }}" alt="">
                </a>
                </div>
            <div class="card card-md">
                <div class="card-body">
                    <h2 class="h2 text-center mb-4">Inicia sesión en tu cuenta</h2>

                    <x-auth-session-status class="mb-4" :status="session('status')" />

                    <form action="{{ route('admin.login') }}" method="POST" autocomplete="off" novalidate>
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Dirección de correo electrónico</label>
                            <input type="email" name="email" :value="old('email')" class="form-control"
                                placeholder="tu@correo.com" autocomplete="off" />
                            <x-input-error :messages="$errors->get('email')" class="mt-2" />

                        </div>

                        <div class="mb-2">
                            <label class="form-label">
                                Contraseña
                                <span class="form-label-description">
                                    <a href="{{ route('admin.password.request') }}">Olvidé mi contraseña</a>
                                </span>
                            </label>

                            <div class="input-group input-group-flat">
                                <input
                                    id="password"
                                    type="password"
                                    name="password"
                                    class="form-control"
                                    placeholder="Tu contraseña"
                                    autocomplete="off"
                                />

                                <span class="input-group-text">
                                    <a
                                        href="#"
                                        class="link-secondary js-toggle-password"
                                        title="Mostrar contraseña"
                                        data-bs-toggle="tooltip"
                                        aria-label="Mostrar contraseña"
                                        aria-pressed="false"
                                    >
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round" class="icon icon-1">
                                            <path d="M10 12a2 2 0 1 0 4 0a2 2 0 0 0 -4 0" />
                                            <path
                                                d="M21 12c-2.4 4 -5.4 6 -9 6c-3.6 0 -6.6 -2 -9 -6c2.4 -4 5.4 -6 9 -6c3.6 0 6.6 2 9 6" />
                                        </svg>
                                    </a>
                                </span>
                            </div>

                        </div>


                        <div class="mb-2">
                            <label class="form-check">
                                <input type="checkbox" class="form-check-input" name="remember" />
                                <span class="form-check-label">Recordarme en este dispositivo</span>
                            </label>
                        </div>

                        <div class="form-footer">
                            <button type="submit" class="btn btn-primary w-100">Iniciar sesión</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const passwordInput = document.getElementById('password');
            const toggleBtn = document.querySelector('.js-toggle-password');

            if (!passwordInput || !toggleBtn) return;

            toggleBtn.addEventListener('click', (e) => {
                e.preventDefault();

                const isHidden = passwordInput.type === 'password';
                passwordInput.type = isHidden ? 'text' : 'password';

                // Accesibilidad / estado
                toggleBtn.setAttribute('aria-pressed', String(isHidden));
                toggleBtn.setAttribute('aria-label', isHidden ? 'Ocultar contraseña' : 'Mostrar contraseña');
                toggleBtn.setAttribute('title', isHidden ? 'Ocultar contraseña' : 'Mostrar contraseña');
                try {
                    if (window.bootstrap?.Tooltip) {
                        const instance = window.bootstrap.Tooltip.getInstance(toggleBtn)
                        if (instance) {
                            instance.dispose()
                            new window.bootstrap.Tooltip(toggleBtn)
                        }
                    }
                } catch (_) {}
            })
        })
    </script>

</body>

</html>
