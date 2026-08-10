<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\CustomPage;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Response;

class SitemapController extends Controller
{
    public function __invoke(): Response
    {
        $products = Product::query()
            ->where('status', 'active')
            ->where('approved_status', 'approved')
            ->select(['slug', 'updated_at'])
            ->get();

        $pages = CustomPage::query()
            ->where('is_active', true)
            ->select(['slug', 'updated_at'])
            ->get();

        $vendors = User::query()
            ->where('user_type', 'vendor')
            ->whereHas('store')
            ->select(['id', 'updated_at'])
            ->get();

        return response()
            ->view('frontend.seo.sitemap', compact('products', 'pages', 'vendors'))
            ->header('Content-Type', 'application/xml; charset=UTF-8');
    }
}
