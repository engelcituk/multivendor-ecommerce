# Seguridad

## Antes de vender u operar

::: danger Prioridad alta
El snapshot y algunos seeders contienen datos de demostración. Nunca publiques credenciales conocidas ni reutilices claves sandbox. Cambia contraseñas, `APP_KEY`, accesos de base, correo y pasarelas en cada entorno.
:::

## Controles esenciales

- `APP_DEBUG=false` y HTTPS en producción.
- Cookies seguras, `HttpOnly` y política `SameSite` apropiada.
- Autorización por recurso con políticas y permisos mínimos.
- Validación de tipo, tamaño y contenido en uploads; nombres generados por servidor.
- Documentos KYC en disco privado, servidos sólo mediante controlador autorizado.
- Rate limiting en login, recuperación, contacto, cupones, checkout y callbacks.
- CSRF en formularios web y firma/verificación en webhooks.
- Secretos fuera del repositorio y rotación documentada.
- Dependencias auditadas y actualizadas con pruebas.
- Backups cifrados y restauraciones ensayadas.

## Servidores de desarrollo

Vite y la versión estable actual de VitePress arrastran avisos de seguridad que afectan al servidor de desarrollo, no a los archivos estáticos generados. Por eso los comandos `docs:dev` y `docs:preview` escuchan únicamente en `127.0.0.1`. No los expongas a Internet: publica sólo el contenido generado en `public/docs` detrás de Nginx o Apache.

## Pagos y dinero

La página de éxito del navegador no prueba por sí sola un pago. Verifica el evento directamente con la pasarela o mediante webhook firmado. Guarda el identificador externo con restricción única y rechaza repeticiones.

Pedidos, comisión, cartera y retiro deben usar transacciones. Para retiros, bloquea la fila de saldo, valida el estado previo y registra un movimiento contable inmutable.

## Datos personales

Clasifica direcciones, teléfono, documentos KYC y datos bancarios. Define retención, borrado, acceso interno y respuesta a incidentes conforme al mercado donde opere Plazora. Evita incluir información sensible en logs.

## Cabeceras recomendadas

Configura progresivamente Content Security Policy, `Referrer-Policy`, `X-Content-Type-Options`, permisos del navegador y protección contra framing. Prueba pagos y assets externos antes de endurecer CSP.

## Respuesta a incidentes

Mantén responsables, canales de escalamiento, procedimiento para revocar claves, preservar evidencia, informar a afectados y reconciliar operaciones financieras. Registra fecha, alcance, decisiones y acciones posteriores.
