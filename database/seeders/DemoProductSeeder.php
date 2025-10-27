<?php

namespace Database\Seeders;

use App\Models\Brand;
use App\Models\Product;
use App\Models\Store;
use App\Models\Tag;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DemoProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $stores = Store::all();

        $brands = Brand::pluck('id')->toArray();
        $tags = Tag::pluck('id')->toArray();

        foreach ($stores as $store) {
            for ($i = 1; $i < 5; $i++) {
                $product = new Product();
                $product->store_id = $store->id;
                $product->product_type = 'physical';
                $product->brand_id = $brands[array_rand($brands)];
                $product->name = 'Product ' . $i;
                $product->slug = 'product-' . $i;
                $product->sku = 'sku-' . $i;
                $product->price = rand(40, 599);
                $product->in_stock = 1;
                $product->description = "<p>Tecno Spark 40 Pro (8/128GB) &ndash; Best Mid-Range Smartphone in Bangladesh<br><br></p>
<p>The Tecno Spark 40 Pro (8/128GB) is a high-performance smartphone in Bangladesh, designed for users who demand speed, clarity, and innovation. With a vivid AMOLED display, powerful MediaTek chipset, and massive battery, it delivers smooth performance, immersive visuals, and all-day reliability&mdash;perfect for gaming, content creation, and everyday use.<br><br></p>
<p>Stunning 6.78-Inch AMOLED Display<br><br></p>
<p>Experience sharp, vibrant visuals on the 6.78-inch 1.5K Ultra Bright AMOLED screen. With a peak brightness of 4500 nits, 144Hz refresh rate, and super-thin bezels, every animation, video, and game comes to life. The Corning Gorilla Glass 7i provides superior protection against scratches and drops.<br><br></p>
<p>Speed Meets Efficiency<br><br></p>
<p>Powered by the MediaTek Helio G100 Ultimate (6nm) octa-core processor, the Spark 40 Pro ensures fluid multitasking and high-speed performance. Coupled with 8GB RAM and 128GB internal storage, it offers ample space and responsiveness for apps, media, and gaming without lag.<br><br></p>
<p>Capture Your World with Precision<br><br></p>
<p>Take stunning photos with the 50MP AI rear camera featuring dual flash for low-light brilliance. Record video in up to 2560&times;1440 resolution for crisp, detailed footage. The 13MP front camera with dual flash delivers sharp selfies and Full HD 1080p video recording, making it perfect for vlogs and video calls.<br><br></p>
<p>Immersive Audio Experience<br><br></p>
<p>Enjoy rich, 3D-like sound with dual stereo speakers powered by Dolby Atmos. From music to movies, the Spark 40 Pro provides an upgraded audio experience for entertainment anywhere.<br><br></p>
<p>All-Day Battery &amp; Fast Charging<br><br></p>
<p>The 5200mAh battery ensures long-lasting usage throughout the day, while 45W fast charging quickly powers up your device, keeping you connected and productive without interruption.<br><br></p>
<p>Smart Connectivity &amp; Security<br><br></p>
<p>Stay connected with dual SIM 4G, Wi-Fi 5 (5GHz), Bluetooth 5.3, and built-in GPS/A-GPS. The under-display fingerprint sensor ensures fast, secure access. Additional features like IP64 water &amp; dust resistance and an IR remote control make the Spark 40 Pro a versatile and reliable companion for everyday life.<br><br></p>
<p>Buy Tecno SPARK 40 Pro from Tech<br><br></p>
<p>In Bangladesh, you can get original Tecno SPARK 40 Pro from Tech. We have a large collection of the latest Tecno Mobile Phone to purchase. Order Online Or Visit your Nearest Tech Shop to get yours at the lowest price.<br><br></p>
<p>The Tecno SPARK 40 Pro comes with a 13-month official warranty (To claim, please visit the nearest Carlcare Service Center).<br><br></p>
<p>Tecno Spark 40 Pro &ndash; FAQs<br><br></p>
<p>Q1: How much RAM and storage does the Spark 40 Pro have?<br><br>A: The Tecno Spark 40 Pro comes with 8GB RAM and 128GB internal storage, expandable via microSD.<br><br></p>
<p>Q2: Does it support fast charging?<br><br>A: Yes, the Tecno Spark 40 Pro supports 45W fast charging for quick power-ups.<br><br></p>
<p>Q3: Is the phone water and dust resistant?<br><br>A: Yes, it has IP64 certification, protecting against everyday splashes and dust.<br><br></p>
<p>Q4: Can I play games smoothly on the Tecno Spark 40 Pro?<br><br>A: Absolutely! The MediaTek Helio G100 Ultimate processor paired with 8GB RAM ensures smooth gaming and multitasking.</p>";

                $product->short_description = "MPN: 82XM014FLK
Model: IdeaPad Slim 3 15ABR8
Processor: AMD Ryzen 5 5625U (6-core/12-thread, 16MB cache, up to 4.3 GHz)
Ram: 16GB DDR4, Storage: 512GB SSD
Display: 15.6 FHD (1920x1080)
Features: Camera privacy shutter, Mil-Std-810h Military Grade";
                $product->status = "active";
                $product->approved_status = "approved";
                $product->is_featured = 0;
                $product->is_hot = rand(0, 1);
                $product->is_new = rand(0, 1);
                $product->save();

                /** Attach categories */
                $product->categories()->sync([1]);

                /** Attach tags */
                $product->tags()->sync($tags[array_rand($tags)]);
            }
        }
    }
}
