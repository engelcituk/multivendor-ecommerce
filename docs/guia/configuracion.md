# Configuración

## Variables de entorno

Laravel obtiene infraestructura y secretos desde `.env`. Nunca publiques ese archivo ni copies valores reales a esta documentación.

| Grupo | Variables principales | Nota |
| --- | --- | --- |
| Aplicación | `APP_NAME`, `APP_ENV`, `APP_KEY`, `APP_DEBUG`, `APP_URL` | `APP_DEBUG=false` en producción |
| Datos | `DB_*` | Usa un usuario con privilegios mínimos |
| Sesión/caché/cola | `SESSION_DRIVER`, `CACHE_STORE`, `QUEUE_CONNECTION` | El proyecto parte con controladores en base de datos |
| Correo | `MAIL_*` | El valor `log` no envía mensajes reales |
| Assets | `ASSET_URL`, `VITE_*` | Ajusta sólo si hay CDN o proxy |

## Ajustes administrables

La tabla de ajustes alimenta `config('settings.*')` mediante `SettingService`. Incluye identidad del sitio, contacto, redes, comisiones y credenciales de pasarelas.

```mermaid
flowchart LR
    A[Panel administrativo] --> B[(settings)]
    B --> C[SettingService]
    C --> D[(cache)]
    D --> E[Vistas y servicios]
```

Los ajustes se almacenan en caché sin vencimiento. Después de importaciones o cambios manuales ejecuta:

```bash
php artisan optimize:clear
```

## Archivos y discos

- `storage/app/private`: documentos privados, incluido material KYC.
- `public/uploads`: imágenes y archivos públicos administrados por la aplicación.
- `public/storage`: enlace simbólico al disco público convencional de Laravel.
- `public/build`: assets generados por Vite.
- `public/docs`: documentación estática generada por VitePress.

Respalda `storage` y `public/uploads` además de MySQL. La base por sí sola no reconstruye los archivos.
