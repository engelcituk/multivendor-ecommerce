<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\CustomPage;
use App\Models\FlashSale;
use App\Models\HeroBanner;
use App\Models\Order;
use App\Models\OrderProduct;
use App\Models\PopularCategory;
use App\Models\Product;
use App\Models\ProductReview;
use App\Models\ProductSection;
use App\Models\Slider;
use App\Services\AlertService;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Validation\ValidationException;

class HomeController extends Controller
{
    function index(): View
    {
        $staticContent = [
            'featuredCategories' => Category::withCount('products')->whereIsFeatured(true)->take(15)->get(),
            'sliders' => Slider::whereIsActive(true)->get(),
            'heroBanner' => HeroBanner::first(),
            'popularCategoriesIds' => PopularCategory::first()?->categories ?? [],
            'flashSale' => FlashSale::first(),
            'productSections' => ProductSection::first(),
        ];

        $featuredCategories = $staticContent['featuredCategories'];
        $sliders = $staticContent['sliders'];
        $heroBanner = $staticContent['heroBanner'];
        $popularCategoriesIds = $staticContent['popularCategoriesIds'];
        $popularCategories = Category::whereIn('id', $popularCategoriesIds)->get();
        $popularProducts = $this->productsByCategory($popularCategoriesIds, true, 4);
        $flashSale = $staticContent['flashSale'];
        $flashSaleProducts = Product::with([
            'images' => fn ($query) => $query->limit(2),
            'store:id,name,seller_id',
            'variants',
        ])->withAvg('reviews', 'rating')->whereIn('id', $flashSale?->products ?? [])->take(8)->get();
        $productSections = $staticContent['productSections'];

        $productSectionsIds = [
            $productSections?->category_one,
            $productSections?->category_two,
            $productSections?->category_three
        ];


        $cardRelations = [
            'images' => fn ($query) => $query->limit(2),
            'store:id,name,seller_id',
            'variants',
        ];
        $hotProducts = Product::with($cardRelations)->withAvg('reviews', 'rating')->whereIsHot(true)->latest()->take(4)->get();
        $newProducts = Product::with($cardRelations)->withAvg('reviews', 'rating')->whereIsNew(true)->latest()->take(4)->get();
        $featuredProducts = Product::with($cardRelations)->withAvg('reviews', 'rating')->whereIsFeatured(true)->latest()->take(4)->get();
        $topRatedProducts = Product::with($cardRelations)->whereHas('reviews')->withAvg('reviews', 'rating')->orderBy('reviews_avg_rating', 'desc')->take(4)->get();

        $productSectionsProducts = $this->productsByCategory($productSectionsIds, false, 4);

        return view('frontend.home.index', compact(
            'featuredCategories',
            'sliders',
            'heroBanner',
            'popularCategories',
            'popularProducts',
            'flashSale',
            'flashSaleProducts',
            'productSectionsProducts',
            'hotProducts',
            'newProducts',
            'featuredProducts',
            'topRatedProducts'
        ));
    }

    function productsByCategory(array $categoryIds, $featured = true, $limit = 12)
    {
        $results = [];
        $allCategories = once(fn () => Category::query()->select(['id', 'parent_id'])->get());
        $childrenByParent = $allCategories->groupBy('parent_id');
        $categoryIdsSet = $allCategories->pluck('id')->flip();

        $descendantIds = function (int $categoryId) use (&$descendantIds, $childrenByParent): array {
            $ids = [];
            foreach ($childrenByParent->get($categoryId, collect()) as $child) {
                $ids[] = $child->id;
                $ids = array_merge($ids, $descendantIds($child->id));
            }

            return $ids;
        };

        foreach ($categoryIds as $categoryId) {
            $categoryId = (int) $categoryId;
            if ($categoryIdsSet->has($categoryId)) {
                $ids = array_merge([$categoryId], $descendantIds($categoryId));
                $cardQuery = Product::with([
                    'images' => fn ($query) => $query->limit(2),
                    'store:id,name,seller_id',
                    'variants',
                ])->withAvg('reviews', 'rating');

                if ($featured)
                    $products = $cardQuery->whereHas('categories', function ($query) use ($ids) {
                        $query->whereIn('categories.id', $ids);
                    })->whereIsFeatured(true)->take($limit)->get();
                else {
                    $products = $cardQuery->whereHas('categories', function ($query) use ($ids) {
                        $query->whereIn('categories.id', $ids);
                    })->latest()->take($limit)->get();
                }


                $results[$categoryId] = $products;
            }
        }


        return $results;
    }

    function storeReview(Request $request, Product $product): JsonResponse
    {
        $request->validate([
            'rating' => ['required', 'numeric', 'min:1', 'max:5'],
            'review' => ['required', 'string', 'max: 500'],
        ]);

        $productPurchasedByUser = Order::where('user_id', user()->id)->whereHas('orderProducts', function ($query) use ($product) {
            $query->where('product_id', $product->id);
        })->exists();

        if (!$productPurchasedByUser) {
            throw ValidationException::withMessages([
                'review' => 'You have not purchased this product'
            ]);
        }
        if (ProductReview::where('product_id', $product->id)->where('user_id', user()->id)->exists()) {
            throw ValidationException::withMessages([
                'review' => 'You have already reviewed this product'
            ]);
        }

        $review = new ProductReview();
        $review->product_id = $product->id;
        $review->user_id = user()->id;
        $review->rating = $request->rating;
        $review->review = $request->review;
        $review->save();

        AlertService::created('Reseña del producto agregada correctamente');

        return response()->json(['status' => 'success', 'message' => 'Reseña del producto agregada correctamente']);
    }

    function customPage(string $slug): View
    {
        $page = CustomPage::where('slug', $slug)->where('is_active', true)->firstOrFail();
        return view('frontend.pages.custom-page', compact('page'));
    }

    function flashSales(): View
    {
        $flashSale = FlashSale::first();
        $flashSaleProducts = Product::with([
            'images' => fn ($query) => $query->limit(2),
            'store:id,name,seller_id',
            'variants',
        ])->withAvg('reviews', 'rating')->whereIn('id', $flashSale?->products ?? [])->paginate(20);
        return view('frontend.pages.flash-sale', compact('flashSale', 'flashSaleProducts'));
    }
}
