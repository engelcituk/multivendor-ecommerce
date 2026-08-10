# Módulos y rutas

La aplicación registra alrededor de 320 rutas en desarrollo; el total incluye herramientas auxiliares y puede variar por entorno. Usa `php artisan route:list` como fuente exacta.

## Tienda y cliente

| Módulo | Funciones principales |
| --- | --- |
| Inicio y catálogo | Inicio, búsqueda, categorías, marcas, productos y vendedores |
| Promociones | Flash sales, cupones, banners y anuncios |
| Cuenta | Registro, login, verificación, contraseña y perfil |
| Compra | Carrito, wishlist, dirección, envío y checkout |
| Pagos | PayPal, Stripe y Razorpay |
| Postventa | Pedidos, reseñas y descargas digitales |
| Contenido | Páginas, contacto, newsletter y sitemap |

## Vendedor

Prefijo `/vendor`, autenticación, correo verificado y rol `vendor`. Algunas acciones requieren `kyc_verified`.

- Dashboard y perfil de tienda.
- Productos físicos/digitales, imágenes, variantes, atributos y archivos.
- Pedidos de la tienda y cambio de estado.
- Métodos de retiro, cartera y solicitudes.

## Administración

Prefijo `/admin`, guard `admin` y middleware de permiso.

- Dashboard con métricas diarias, mensuales y anuales.
- KYC, roles, administradores y asignación de permisos.
- Categorías, marcas, etiquetas, productos y pedidos.
- Ecommerce, cupones, envíos, flash sales y funciones destacadas.
- Secciones, páginas, anuncios, contactos y suscriptores.
- Retiros, pasarelas, identidad, SEO y ajustes generales.

## Inspección útil

```bash
php artisan route:list --except-vendor
php artisan route:list --path=vendor
php artisan route:list --path=admin
php artisan route:list --name=checkout
```

Los nombres de ruta deben ser globalmente únicos; una duplicación impide `route:cache` y `php artisan optimize`.
