<?php

namespace Database\Seeders\Frontend;

use App\Models\Kyc;
use App\Models\Store;
use App\Models\StoreWallet;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $customer = User::updateOrCreate(
            ['email' => 'cliente@plazora.test'],
            [
                'name' => 'Cliente Demo',
                'password' => Hash::make('PlazoraDemo2026!'),
                'user_type' => 'user',
            ]
        );
        $customer->forceFill(['email_verified_at' => now()])->save();

        $vendor = User::updateOrCreate(
            ['email' => 'vendedor@plazora.test'],
            [
                'name' => 'Vendedor Demo',
                'password' => Hash::make('PlazoraDemo2026!'),
                'user_type' => 'vendor',
            ]
        );
        $vendor->forceFill(['email_verified_at' => now()])->save();

        $store = Store::updateOrCreate(
            ['seller_id' => $vendor->id],
            [
                'name' => 'Tienda Demo Plazora',
                'email' => $vendor->email,
                'phone' => '5550000000',
                'address' => 'Ciudad de México, México',
                'short_description' => 'Tienda preparada para probar el panel de vendedor en local.',
                'long_description' => 'Cuenta y tienda de demostración incluidas exclusivamente para desarrollo y evaluación local de Plazora.',
            ]
        );

        $kyc = Kyc::firstOrNew(['user_id' => $vendor->id]);
        $kyc->status = 'approved';
        $kyc->verified_at = now();
        $kyc->full_name = 'Vendedor Demo';
        $kyc->date_of_birth = '1990-01-01';
        $kyc->gender = 'male';
        $kyc->full_address = 'Ciudad de México, México';
        $kyc->document_type = 'id_card';
        $kyc->document_scan_copy = 'demo/documento-kyc-local.pdf';
        $kyc->save();

        $wallet = StoreWallet::firstOrNew(['store_id' => $store->id]);
        if (! $wallet->exists) {
            $wallet->balance = 0;
        }
        $wallet->save();
    }
}
