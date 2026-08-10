# Cuentas demo

Plazora incluye tres cuentas para recorrer los flujos principales después de una instalación local. Las mismas credenciales están definidas tanto en los seeders como en `database/database.sql`.

## Credenciales

| Perfil | Acceso | Correo | Contraseña |
| --- | --- | --- | --- |
| Administrador | `/admin/login` | `admin@plazora.test` | `PlazoraDemo2026!` |
| Vendedor | `/login` | `vendedor@plazora.test` | `PlazoraDemo2026!` |
| Cliente | `/login` | `cliente@plazora.test` | `PlazoraDemo2026!` |

::: danger Exclusivamente para local
Estas credenciales son públicas porque forman parte de la documentación. No deben existir en producción. Antes de publicar Plazora, cambia la contraseña del administrador y elimina, desactiva o reemplaza las cuentas demo.
:::

## Administrador

La cuenta administrativa recibe el rol `Super Admin`. Permite revisar dashboard, catálogo, pedidos, vendedores, KYC, retiros, permisos, contenido y configuración global.

El administrador usa un guard separado; por ello debe iniciar sesión en `/admin/login`, no en el formulario público.

## Vendedor

La cuenta del vendedor queda preparada para entrar directamente al panel:

- tipo de usuario `vendor`;
- correo verificado;
- tienda `Tienda Demo Plazora`;
- KYC aprobado;
- cartera creada con saldo inicial en cero.

Después del login, la aplicación redirige al dashboard bajo `/vendor/dashboard`. Esta cuenta permite probar perfil de tienda, productos, pedidos, métodos de retiro y solicitudes.

## Cliente

La cuenta de cliente tiene tipo `user` y correo verificado. Sirve para probar perfil, direcciones, carrito, wishlist, checkout, pedidos, reseñas y descargas digitales.

## Según el método de instalación

### Importación del SQL

Al importar `database/database.sql`, las cuentas ya están presentes con el hash de la contraseña demo. El vendedor corresponde a la tienda y KYC incluidos en el snapshot.

### Migraciones y seeders

`AdminSeeder` crea o actualiza al administrador y su rol. `UserSeeder` crea o actualiza cliente, vendedor, tienda, KYC y cartera. Los seeders usan operaciones repetibles para reducir duplicados al ejecutarlos nuevamente en un entorno local.

```bash
php artisan migrate --seed
```

Este comando se muestra como referencia, pero recuerda que los seeders actuales no reconstruyen todo el catálogo del snapshot SQL. Consulta [SQL frente a seeders](/decisiones/001-sql-vs-seeders).

## Checklist antes de producción

1. Cambia la contraseña de cualquier administrador conservado.
2. Elimina o desactiva `cliente@plazora.test` y `vendedor@plazora.test`.
3. Revisa administradores, roles y permisos existentes.
4. Rota claves de correo, base de datos y pasarelas.
5. Confirma que ninguna cuenta documentada pueda autenticarse.
