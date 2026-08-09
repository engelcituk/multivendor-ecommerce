<?php

namespace App\Providers;

use App\Services\SettingService;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class SettingServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        $this->app->singleton(SettingService::class, fn () => new SettingService);
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        if ($this->app->runningInConsole() && ! $this->app->runningUnitTests()) {
            $command = request()->server('argv')[1] ?? null;

            if ($command !== 'config:clear') {
                return;
            }
        }

        // The table is unavailable during fresh migrations and before the
        // test database has been prepared by RefreshDatabase.
        if (! Schema::hasTable('settings')) {
            return;
        }

        $settings = $this->app->make(SettingService::class);
        $settings->setSettings();
    }
}
