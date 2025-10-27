<?php

namespace Database\Seeders;

use App\Models\Kyc;
use App\Models\Store;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DemoVendorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        /** Demo users */
        $demoUsers = [
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'Alice Johnson',
                'email' => 'alice.johnson@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password1'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'Bob Smith',
                'email' => 'bob.smith@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password2'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'Carol Williams',
                'email' => 'carol.williams@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password3'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'David Brown',
                'email' => 'david.brown@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password4'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'Emma Davis',
                'email' => 'emma.davis@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password5'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'Frank Miller',
                'email' => 'frank.miller@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password6'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'Grace Wilson',
                'email' => 'grace.wilson@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password7'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'Henry Moore',
                'email' => 'henry.moore@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password8'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'Isabella Taylor',
                'email' => 'isabella.taylor@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password9'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
            [
                'avatar' => '/defaults/avatar.png',
                'name' => 'Jack Anderson',
                'email' => 'jack.anderson@example.com',
                'email_verified_at' => now(),
                'password' => bcrypt('password10'),
                'user_type' => 'vendor',
                'remember_token' => null
            ],
        ];

        $brands = [
            'Pretty Garden',
            'Mova',
            'Samsung',
            'Trendy Queen',
            'Levoit',
            'Pemiby',
            'Cardo',
            'Gucci',
            'Chanel',
            'Louis Vuitton',
        ];

        foreach ($demoUsers as $key => $user) {
            $createUser = User::create($user);

            // create kcy
            $kyc = new Kyc();
            $kyc->user_id = $createUser->id;
            $kyc->status = 'approved';
            $kyc->full_name = $createUser->name;
            $kyc->date_of_birth = now();
            $kyc->gender = 'male';
            $kyc->full_address = '123 Main St, Anytown, USA';
            $kyc->document_type = 'passport';
            $kyc->document_scan_copy = '/uploads/document.pdf';
            $kyc->save();

            // create store profile
            $store = new Store();
            $store->seller_id = $createUser->id;
            $store->logo = '/uploads/v-logo-' . $key + 1 . '.jpg';
            $store->banner = '/uploads/v-banner-' . $key + 1 . '.jpg';
            $store->name = $brands[$key];
            $store->phone = '9900770000';
            $store->email = $createUser->email;
            $store->address = '123 Main St, Anytown, USA';
            $store->short_description = 'Gucci is a world-renowned Italian luxury fashion house celebrated for its exquisite craftsmanship, eclectic aesthetic, and influential role in shaping contemporary style. Founded in Florence in 1921';
            $store->long_description = "Gucci is an iconic Italian luxury brand, a true powerhouse in the world of fashion, that embodies opulence, innovation, and a rich heritage. Founded by Guccio Gucci in Florence in 1921, the brand began as a small luggage company inspired by the high-society clientele of London's Savoy Hotel. Over a century, it has evolved into a global symbol of refined Italian craftsmanship and avant-garde design.

The brand's identity is built upon a foundation of signature elements that are recognized worldwide. The interlocking double 'G' logo, the bamboo handle on handbags, the equestrian-inspired Horsebit detail, and the green-red-green Web stripe are all integral parts of Gucci's storied history. These motifs, once classic symbols of a bygone era, have been continually reinterpreted to remain fresh and relevant.

Gucci's product range is expansive, encompassing ready-to-wear for men and women, an impressive collection of leather goods, footwear, jewelry, and timepieces. The brand's runway shows are a spectacle of creativity, often featuring a vibrant mix of historical references, pop culture influences, and maximalist flair. Under the creative direction of influential designers like Alessandro Michele, Gucci experienced a transformative renaissance, embracing a more is more philosophy that resonated with a new generation of luxury consumers. The brand is a master of storytelling, creating collections that are not just clothes but wearable art that challenges conventions.

Today, Gucci stands as a testament to the enduring power of luxury. It represents a bold and confident lifestyle, blending heritage with a daringly modern sensibility. From its meticulously crafted accessories to its groundbreaking fashion collections, Gucci remains at the forefront of the industry, a brand that doesn't just follow trends—it creates them.";
            $store->save();

        }
    }
}
