# Stack tecnológico

## Backend

| Componente | Versión declarada | Uso |
| --- | --- | --- |
| PHP | `^8.5` | Runtime obligatorio del proyecto |
| Laravel | `^13` | Framework web y consola |
| Spatie Permission | `^8.3` | Roles y permisos administrativos |
| Laravel Lang | `^6.8` | Traducciones del framework |
| PayPal SDK | `^3.1` | Cobros PayPal |
| Stripe PHP | `^21.1` | Stripe Checkout |
| Razorpay | `^2.9` | Cobros Razorpay |
| Pest | `^5.0` | Pruebas automatizadas |

Consulta `composer.json` y `composer.lock` para las versiones exactas instaladas.

## Frontend

| Componente | Uso |
| --- | --- |
| Blade | Renderizado de tienda y paneles |
| Alpine.js | Interacciones ligeras |
| Tailwind CSS / CSS del tema | Estilos de componentes |
| Axios | Peticiones asíncronas |
| Vite | Compilación de assets de la aplicación |
| VitePress | Portal documental estático |
| Mermaid | Diagramas mantenibles como texto |

## Persistencia e infraestructura

- MySQL/MariaDB para dominio, sesiones, caché y colas según `.env`.
- Sistema de archivos para uploads públicos y documentos privados.
- Cron para el scheduler y un proceso supervisado para colas en producción.
- Nginx o Apache con PHP-FPM en VPS.

## Política de actualización

Actualiza primero en una rama, revisa las restricciones con `composer outdated` y `npm outdated`, ejecuta pruebas y valida los flujos de pago en sandbox. No uses actualizaciones mayores automáticas en producción.
