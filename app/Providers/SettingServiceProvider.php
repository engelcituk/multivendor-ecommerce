<?php

namespace App\Providers;

use App\Services\SettingService;
use Illuminate\Support\ServiceProvider;

class SettingServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        $this->app->singleton(SettingService::class, fn () => new SettingService());
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        if (app()->runningInConsole() && ! $this->app->runningUnitTests()) {

        // No intentes cargar la configuración si estamos migrando
        // o si estamos en cualquier otro comando de Artisan
        // que no sea un test.
        // Hacemos una excepción: si el comando es 'config:clear', DEBE ejecutarse.
        if (request()->server('argv')[1] !== 'config:clear') {
            return;
        }
    }
        $settings = $this->app->make(SettingService::class);
        $settings->setSettings();
    }
}
