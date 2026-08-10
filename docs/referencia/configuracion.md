# Configuración y servicios

## Configuración Laravel

Los archivos bajo `config/` definen infraestructura y leen variables de entorno. Con configuración cacheada, `env()` debe usarse solamente dentro de esos archivos.

## Ajustes de Plazora

`SettingService` carga ajustes de la base y los expone mediante `config('settings.clave')`. Los controladores administrativos invalidan la caché cuando actualizan valores; una edición SQL manual no lo hace.

| Familia | Ejemplos de uso |
| --- | --- |
| Identidad | nombre, logo, favicon, descripción y copyright |
| Contacto | dirección, teléfono, correo y horario |
| Negocio | comisión administrativa y límites de retiro |
| Pagos | estado, modo y credenciales por pasarela |
| Redes | enlaces e iconos sociales |
| SEO | título, descripción y metadatos globales |

## Sesión de checkout

Dirección, método de envío y datos temporales se conservan durante el checkout. Valida nuevamente contra base antes de crear el pedido y límpiala al finalizar o cancelar.

## Integraciones externas

Cada pasarela debe tener credenciales distintas para sandbox y producción, URLs correctas, webhook firmado, identificador externo único, logs sanitizados y conciliación.

## Comandos operativos

```bash
php artisan about
php artisan route:list
php artisan optimize:clear
php artisan optimize
php artisan queue:failed
php artisan schedule:list
```
