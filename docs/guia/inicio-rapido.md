# Inicio rápido

Esta ruta reproduce el sistema de demostración incluido en el repositorio.

Si acabas de recibir el archivo del sistema, conserva primero el ZIP original y sigue [Entrega y versionado](/guia/entrega-y-versionado).

## Requisitos

- PHP 8.5 con extensiones habituales de Laravel y MySQL. Versiones anteriores no forman parte del entorno soportado por Plazora.
- Composer 2.
- Node.js 20.19+ o 22.12+. El entorno validado usa Node.js 22.
- MySQL 8 o MariaDB compatible.
- Un servidor web local como Laragon, o `php artisan serve`.

## Preparar la aplicación

```bash
composer install
npm install
copy .env.example .env
php artisan key:generate
```

Configura en `.env` al menos:

```dotenv
APP_NAME=Plazora
APP_ENV=local
APP_DEBUG=true
APP_URL=http://multivendor.test

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=plazora
DB_USERNAME=root
DB_PASSWORD=
```

Por convención, la aplicación, el proyecto y la base de datos se llaman **Plazora**. Usa `plazora` también en entornos nuevos para que configuración, soporte y despliegue hablen el mismo idioma.

## Cargar el conjunto de demostración

1. Crea una base vacía llamada `plazora` con codificación `utf8mb4`.
2. Importa `database/database.sql`.
3. Limpia cualquier caché serializado incluido en el snapshot.

```bash
php artisan optimize:clear
php artisan storage:link
npm run build
npm run build
```

No ejecutes `migrate --seed` después de importar el SQL: ambos procesos intentan crear datos con identificadores que pueden colisionar. Consulta la [decisión SQL frente a seeders](/decisiones/001-sql-vs-seeders).

## Iniciar

Con Laragon, abre el host virtual configurado. Como alternativa:

```bash
php artisan serve
npm run dev
```

La aplicación queda en la URL informada por Artisan y la documentación pública en `/docs/` después de compilarla.

## Verificación mínima

```bash
php artisan about
php artisan route:list
php artisan test
npm run build
```

Comprueba manualmente catálogo, autenticación, panel vendedor, panel administrativo y un checkout en modo sandbox.
