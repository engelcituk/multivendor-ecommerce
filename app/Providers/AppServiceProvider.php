<?php

namespace App\Providers;

use App\Models\BannerAd;
use App\Models\Category;
use App\Models\CustomPage;
use App\Models\OfferSlider;
use App\Models\OurFeature;
use App\Models\SocialLink;
use App\Models\Wishlist;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrapFive();

        Gate::before(function ($user, $ability) {
            return $user->hasRole('Super Admin') ? true : null;
        });

        view()->composer(['frontend.layouts.header', 'frontend.layouts.footer'], function ($view) {
            $chrome = once(fn () => [
                'customPages' => CustomPage::where('is_active', true)->get(),
                'offerSliders' => OfferSlider::where('is_active', true)->get(),
                'ourFeatures' => OurFeature::whereStatus(true)->get(),
                'socialLinks' => SocialLink::whereStatus(true)->get(),
                'pages' => CustomPage::whereIsActive(true)->latest()->take(5)->get(),
                'footerFeaturedCategories' => Category::withCount('products')->whereIsFeatured(true)->latest()->take(5)->get(),
            ]);

            $view->with($chrome);
        });

        view()->composer(['frontend.home.index', 'frontend.pages.product'], function ($view) {
            $ads = BannerAd::all()->groupBy('banner_id');

            $view->with('ads', $ads);
        });

        view()->composer('components.frontend.product-card', function ($view) {
            $userId = auth('web')->id();
            $productIds = once(fn () => $userId
                ? Wishlist::where('user_id', $userId)->pluck('product_id')->all()
                : []);

            $view->with('wishlistsProductIds', $productIds);
        });
    }
}
