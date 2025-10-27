<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DemoOrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i = 1; $i <= 100; $i++) {
            $date = $date = now()->startOfMonth()->addDays(rand(0, now()->daysInMonth - 1))->format('Y-m-d H:i:s');
            \DB::table('orders')->insert(
                [
                    [
                        'id' => $i,
                        'user_id' => 1,
                        'store_id' => 10,
                        'transaction_id' => '8UY59224GP500912R',
                        'customer_email' => 'user@gmail.com',
                        'customer_phone' => null,
                        'customer_first_name' => 'Test user',
                        'customer_last_name' => null,
                        'billing_info' => '{"id": 1, "zip": 62967, "city": "Laboriosam minima a", "email": "gafy@mailinator.com", "phone": "+1 (626) 584-2047", "state": "Ut error at soluta c", "address": "Rem dignissimos cons", "country": "Netherlands Antilles", "user_id": 1, "last_name": "Farley", "created_at": "2025-09-07T06:54:52.000000Z", "first_name": "Rachel", "is_default": 1, "updated_at": "2025-09-07T06:54:52.000000Z"}',
                        'shipping_info' => null,
                        'has_coupon' => 0,
                        'coupon' => null,
                        'discount' => null,
                        'shipping_charge' => 30,
                        'total' => 143,
                        'payment_method' => 'PayPal',
                        'currency' => 'USD',
                        'currency_icon' => null,
                        'currency_rate' => 1,
                        'order_status' => 'pending',
                        'payment_status' => 'paid',
                        'created_at' => $date,
                        'updated_at' => '2025-09-07 07:26:49',
                    ]
                ]
            );

            \DB::table('order_products')->insert(
                [
                    [
                        'order_id' => $i,
                        'product_id' => 175,
                        'product_name' => 'Dr. Martens 2976 Chelsea Leather Boots – Smooth Black',
                        'unit_price' => 113,
                        'variant' => null,
                        'quantity' => 1,
                        'created_at' => $date,
                        'updated_at' => '2025-09-07 07:26:49',
                    ],
                ]
            );

            \DB::table('admin_commissions')->insert([
                'order_id' => $i,
                'commission_rate' => 15,
                'commission_amount' => 50,
                'created_at' => $date,
            ]);
        }
    }
}
