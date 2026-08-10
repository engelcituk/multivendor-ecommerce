<?php

namespace Database\Seeders\Admin;

use App\Models\Admin;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void {

        /** Create the local demo administrator. */
        $admin = Admin::updateOrCreate(
            ['email' => 'admin@plazora.test'],
            [
                'name' => 'Administrador Demo',
                'password' => Hash::make('PlazoraDemo2026!'),
            ]
        );

        $admin->forceFill(['email_verified_at' => now()])->save();

        /** Create Super Admin Role */
        $role = Role::firstOrCreate(['name' => 'Super Admin', 'guard_name' => 'admin']);

        /** Assign Super Admin Role to Super Admin */
        $admin->syncRoles([$role]);
    }
}
