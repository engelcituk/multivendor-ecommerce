# Instalación local

## Opción A: Laragon en Windows

1. Coloca el repositorio en `C:\laragon\www\multivendor`.
2. Selecciona PHP 8.5 y habilita MySQL. No se consideran soportadas versiones menores.
3. Crea `plazora` e importa `database/database.sql`.
4. Copia `.env.example` a `.env` y ajusta dominio y credenciales.
5. Instala dependencias, genera la clave, crea el enlace de almacenamiento y compila assets.

```powershell
composer install
npm install
Copy-Item .env.example .env
php artisan key:generate
php artisan storage:link
php artisan optimize:clear
npm run build
```

Laragon normalmente crea un host como `http://multivendor.test`. Usa exactamente ese origen en `APP_URL` para evitar cookies, enlaces y callbacks inconsistentes.

## Opción B: servidor embebido

```bash
php artisan serve --host=127.0.0.1 --port=8000
npm run dev
```

Para revisar exclusivamente la documentación durante su edición:

```bash
npm run docs:dev
```

## Dos estrategias de datos

| Necesidad | Procedimiento | Resultado |
| --- | --- | --- |
| Ver el producto completo | Importar `database/database.sql` | Dataset coherente de demostración |
| Desarrollar esquema limpio | `php artisan migrate --seed` | Esqueleto parcial; no replica la demostración |
| Ejecutar pruebas automatizadas | Base aislada de pruebas y migraciones | Estado efímero y controlado |

::: danger No mezcles estrategias
Importar el SQL y ejecutar todos los seeders sobre la misma base puede duplicar claves, slugs, roles y registros. Haz respaldo antes de cualquier cambio destructivo.
:::

## Problemas frecuentes en Windows

- **OPcache incompatible con PHP 8.5:** instala o activa una compilación de OPcache construida para la misma API de PHP. No es un error de Laravel.
- **`npm` no inicia:** confirma que `node` y `npm` pertenecen a la misma instalación.
- **Imágenes faltantes:** verifica `php artisan storage:link` y permisos en `public/uploads` y `storage`.
- **Configuración vieja:** ejecuta `php artisan optimize:clear`; los ajustes de Plazora también usan caché en base de datos.
