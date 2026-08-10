# Solución de problemas

## `php artisan optimize` falla por una ruta duplicada

Laravel exige que cada ruta nombrada sea única para serializar el caché. Busca el nombre indicado:

```bash
php artisan route:list --name=admin.password.update
```

Renombra o elimina la definición duplicada, luego ejecuta `php artisan optimize:clear` y vuelve a optimizar.

## OPcache informa una API de Zend distinta

PHP y la extensión OPcache fueron compilados para APIs diferentes. Instala la DLL o paquete exacto de tu versión de PHP, o desactiva temporalmente esa extensión en desarrollo. Reinicia el servidor y confirma con `php --ri opcache`.

## Aparece `Unauthenticated`

La petición llegó a una ruta protegida sin una sesión válida. En HTML, redirige al login; en AJAX, maneja el `401` y conserva el destino deseado. Verifica cookies, dominio de `APP_URL`, CSRF y el header `Accept`.

## Los ajustes no cambian

```bash
php artisan optimize:clear
```

Los ajustes de negocio se conservan en caché. Evita modificar la tabla directamente salvo mantenimiento controlado.

## `/docs/` no existe

Compila el portal:

```bash
npm run build
```

Confirma que exista `public/docs/index.html`, que el document root sea `public` y que el servidor permita archivos estáticos bajo `/docs/`.

## Imágenes o descargas fallan

Verifica permisos, enlaces simbólicos, rutas almacenadas en base y que el respaldo de archivos corresponda al dump restaurado. No conviertas un disco privado en público para resolver KYC.
