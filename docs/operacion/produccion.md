# Producción y tareas

## Colas

Cuando `QUEUE_CONNECTION=database`, mantén al menos un worker supervisado:

```ini
[program:plazora-worker]
command=php /var/www/plazora/current/artisan queue:work --sleep=3 --tries=3 --max-time=3600
directory=/var/www/plazora/current
autostart=true
autorestart=true
stopasgroup=true
killasgroup=true
redirect_stderr=true
stdout_logfile=/var/log/supervisor/plazora-worker.log
```

Ejecuta `php artisan queue:restart` después de cada release.

## Scheduler

```text
* * * * * cd /var/www/plazora/current && php artisan schedule:run >> /dev/null 2>&1
```

Revisa `routes/console.php` y cualquier comando programado antes de asumir qué tareas existen.

## Cachés

`php artisan optimize` compila configuración, eventos, rutas y vistas. Sólo úsalo después de comprobar que todas las rutas tienen nombres únicos y que la configuración no llama a funciones incompatibles con caché.

```bash
php artisan optimize:clear
php artisan optimize
```

La configuración dinámica de Plazora también usa caché desde base de datos. Limpia después de importar un snapshot o editar ajustes fuera del panel.

## Observabilidad mínima

- Logs de aplicación centralizados y con rotación.
- Alertas por excepciones, cola fallida, pagos inconclusos y disco lleno.
- Métricas de latencia, errores HTTP, uso de CPU/memoria y conexiones MySQL.
- Conciliación diaria entre pasarelas, pedidos, comisiones, carteras y retiros.
- Monitoreo de expiración TLS, backups y tareas programadas.

## Checklist de release

1. Respaldo y plan de rollback.
2. Dependencias bloqueadas e instaladas de forma reproducible.
3. Pruebas y build documental aprobados.
4. Migraciones revisadas y ejecutadas con `--force`.
5. Assets, documentación, cachés y workers actualizados.
6. Smoke test de inicio, login, catálogo y pago sandbox.
