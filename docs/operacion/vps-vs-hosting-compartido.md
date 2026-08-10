# VPS frente a hosting compartido

Plazora recomienda una VPS Ubuntu Server con Nginx administrada por el propietario. El hosting compartido se incluye en esta comparación para explicar las diferencias, no como arquitectura objetivo.

## Comparativa rápida

| Capacidad | VPS administrada por ti | Hosting compartido |
| --- | --- | --- |
| PHP 8.5 y extensiones | Controlas versión y módulos | Depende del proveedor |
| Nginx y reglas HTTP | Configuración completa | Limitada o inexistente |
| Workers de colas | Procesos permanentes con Supervisor/systemd | Frecuentemente no permitidos |
| Scheduler | Cron cada minuto bajo tu control | Cron limitado por plan |
| Deploy con Git | Flujo completo, deploy keys y releases | Puede estar restringido |
| Acceso SSH | Completo y administrable | Parcial, compartido o no disponible |
| MySQL | Ajustes, usuarios y backups controlados | Recursos y configuración compartidos |
| Backups | Política, cifrado y restauración propios | Dependencia del proveedor |
| Observabilidad | Logs, métricas y alertas completas | Visibilidad limitada |
| Seguridad del servidor | Responsabilidad y control propios | Parcialmente delegada |
| Escalamiento | Puedes aumentar recursos o separar servicios | Limitado al catálogo de planes |
| Costo inicial | Mayor que un hosting básico | Generalmente menor |
| Conocimiento requerido | Administración de Linux y servicios | Menor carga operativa |

## VPS Ubuntu Server con Nginx

### Ventajas

- Control exacto de PHP 8.5, Nginx, MySQL, Composer y Node.js.
- Workers permanentes para correos, pagos y tareas asíncronas.
- Deploys reproducibles desde el repositorio privado.
- Backups, firewall, TLS, monitoreo y políticas de acceso definidos por ti.
- Mejor capacidad para investigar rendimiento y ajustar recursos.
- Posibilidad de crecer hacia Redis, almacenamiento externo, CDN o servicios separados.

### Desventajas

- Requiere administrar parches, firewall, SSH, certificados, procesos y backups.
- Una mala configuración puede introducir riesgos de seguridad o disponibilidad.
- Necesita monitoreo y una rutina operativa; no es un servicio que se deba abandonar después de instalar.

## Hosting compartido

### Ventajas

- Menor precio de entrada.
- Panel gráfico y mantenimiento básico del servidor gestionado por un tercero.
- Puede servir para una demostración temporal si ofrece PHP 8.5 y satisface todos los requisitos.

### Desventajas

- No garantiza control sobre PHP 8.5, extensiones ni configuración de procesos.
- Puede impedir workers persistentes, cron por minuto, comandos SSH o enlaces simbólicos.
- Los recursos se comparten con otros clientes y el rendimiento es menos predecible.
- Los deploys, logs, backups y recuperación suelen estar sujetos a las herramientas del proveedor.
- Las restricciones pueden romper pagos, colas, generación de assets o tareas programadas aunque la página inicial cargue.

::: warning No recomendado para producción
Que un hosting compartido consiga mostrar la página de inicio no significa que pueda operar correctamente todo el marketplace. Plazora necesita control de colas, scheduler, almacenamiento, permisos, callbacks de pago y procesos de despliegue; por ello la referencia soportada es una VPS Ubuntu Server con Nginx.
:::

## Responsabilidad operativa

Elegir una VPS cambia dependencia por control. El propietario debe mantener:

1. Actualizaciones de seguridad de Ubuntu y paquetes.
2. Acceso SSH mediante llaves, usuarios sin privilegios y firewall.
3. Nginx, PHP-FPM, MySQL, workers y cron saludables.
4. TLS renovable automáticamente.
5. Backups cifrados con restauraciones probadas.
6. Monitoreo de errores, recursos, disco, colas y pagos.
7. Un procedimiento de release y rollback basado en Git.

La [guía de despliegue en VPS](/operacion/despliegue-vps) contiene la configuración de referencia.
