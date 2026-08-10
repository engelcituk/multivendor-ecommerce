# Base de datos

## Estrategia recomendada

El repositorio ofrece dos caminos que hoy no son equivalentes:

- `database/database.sql`: snapshot completo para reproducir la demostración de Plazora.
- Migraciones y seeders: esquema controlado por código con datos iniciales parciales.

Para evaluar o desplegar la experiencia incluida, importa el SQL. Para pruebas automatizadas o construir una instalación limpia a largo plazo, usa migraciones y mejora los seeders hasta que sean reproducibles. Consulta la [decisión arquitectónica](/decisiones/001-sql-vs-seeders).

## Importación segura

```bash
mysql -u USUARIO -p -e "CREATE DATABASE plazora CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
mysql -u USUARIO -p plazora < database/database.sql
php artisan optimize:clear
```

Antes de importar en un entorno existente, genera un respaldo. No pegues contraseñas en el historial del shell; usa el prompt del cliente.

## Después de importar

1. Rota cuentas administrativas y credenciales de ejemplo.
2. Revisa ajustes de correo, dominio, comisión y pasarelas.
3. Elimina o reemplaza claves sandbox antes de producción.
4. Confirma que los archivos referenciados por la base existen.
5. Limpia cachés y prueba autenticación, catálogo y checkout.

## Respaldos

Un respaldo útil contiene:

- Dump consistente de MySQL.
- `storage/app` y `public/uploads`.
- Variables de entorno protegidas en un gestor de secretos.
- Registro de versión o commit desplegado.

Prueba la restauración periódicamente en un entorno separado. Un archivo que nunca se restauró no es todavía un plan de recuperación validado.

## Comando destructivo existente

La aplicación incluye una acción administrativa que ejecuta `migrate:fresh --seed` y limpia archivos de uploads. Esto elimina tablas y contenido; además, los seeders actuales no reconstruyen todo el dataset de demostración.

::: danger No usar en producción
Retira o bloquea esa ruta fuera de desarrollo. Exige autorización reforzada, confirmación explícita y respaldo verificado si se conserva para entornos internos.
:::
