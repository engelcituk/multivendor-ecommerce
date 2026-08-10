# Estructura del proyecto

```text
app/
├── Http/Controllers/       # Entradas web por superficie
├── Http/Middleware/        # Rol, KYC y controles de acceso
├── Models/                 # Entidades y relaciones Eloquent
├── Services/               # Casos de uso que cruzan modelos
└── Providers/              # Arranque e integración del framework
database/
├── migrations/             # Evolución del esquema
├── seeders/                # Datos iniciales parciales
└── database.sql            # Snapshot completo de demostración
docs/                       # Fuente VitePress de esta guía
public/
├── assets/ y uploads/      # Recursos públicos
├── build/                  # Build de la aplicación
└── docs/                   # Build público de la documentación
resources/views/
├── frontend/               # Tienda y cuenta
├── vendor/                 # Panel vendedor
└── admin/                  # Panel administrativo
routes/                     # Rutas web, autenticación y consola
storage/                    # Logs, caché, sesiones y archivos privados
tests/                      # Pruebas Pest/PHPUnit
```

## Convenciones

- No cambies nombres de modelos, relaciones o tablas sólo para traducir la interfaz.
- Los textos visibles deben vivir en español o en archivos de idioma, no en identificadores de dominio.
- Evita reglas financieras dentro de vistas o JavaScript.
- Mantén secretos en entorno o un gestor dedicado, nunca en el repositorio.
- Añade migraciones incrementales; no edites migraciones ya desplegadas salvo una política explícita.

## Documentación

Los Markdown de `docs/` son la fuente. El comando estándar `npm run build` compila tanto la aplicación como la documentación y genera `public/docs`; no edites el HTML generado porque se sobrescribe.
