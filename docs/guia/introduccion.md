# Introducción

Plazora es un marketplace multivendedor construido con Laravel. Reúne en una misma aplicación un escaparate público, una cuenta de cliente, un panel para vendedores y un panel administrativo con permisos.

## Propuesta de valor

Plazora está pensado como un producto entregable y controlable por quien lo adquiere:

- **Completamente en español:** tienda, panel administrativo, panel vendedor, validaciones, alertas y documentación se presentan en español natural.
- **Stack moderno:** Laravel 13 sobre PHP 8.5, assets administrados con Vite y dependencias versionadas.
- **Infraestructura propia:** el entorno recomendado es una VPS Ubuntu Server con Nginx, PHP-FPM y MySQL administrada por el propietario.
- **Documentación incluida:** el código se acompaña de contexto funcional, técnico, operativo y de seguridad.
- **Sin dependencia obligatoria del proveedor:** después de recibir y validar el ZIP, el comprador puede respaldar el proyecto en su repositorio privado y mantenerlo mediante Git.

La documentación forma parte del producto y se publica junto con la aplicación mediante `npm run build`.

## Alcance actual

- Catálogo de productos físicos y digitales, categorías jerárquicas, marcas, etiquetas, atributos y variantes.
- Carrito, lista de deseos, cupones, direcciones, envíos, checkout y reseñas.
- Pedidos separados por tienda, comisiones administrativas y cartera del vendedor.
- PayPal, Stripe Checkout y Razorpay como pasarelas configurables.
- Alta de vendedores, perfil de tienda, verificación KYC y solicitudes de retiro.
- Administración de contenido, promociones, anuncios, páginas, contactos y suscriptores.
- SEO básico, sitemap, configuración desde base de datos y localización al español.

## Superficies de la aplicación

| Superficie | Audiencia | Acceso | Responsabilidad |
| --- | --- | --- | --- |
| Tienda pública | Visitantes | `/` | Descubrimiento, catálogo, tiendas y contenido |
| Cuenta de cliente | Clientes autenticados | Rutas web protegidas | Perfil, carrito, pedidos, reseñas y descargas |
| Panel de vendedor | Vendedores verificados | `/vendor` | Productos, pedidos, tienda, cartera y retiros |
| Panel administrativo | Personal interno | `/admin` | Gobierno de la plataforma, permisos y configuración |
| Documentación | Público | `/docs/` | Contexto técnico, funcional y operativo |

## Estado y fuente de verdad

Esta documentación se deriva del código, las rutas, los modelos, los servicios y el esquema de datos presentes en el repositorio. Cuando la documentación contradiga al código, **el código describe el comportamiento ejecutable**, pero la discrepancia debe corregirse en ambos lugares.

## Convenciones del producto

- El sistema, el repositorio y la base de datos se identifican como **Plazora**.
- La base de datos principal se llama `plazora`; las variantes por entorno pueden usar sufijos como `plazora_testing`.
- PHP 8.5 es la única versión soportada por esta entrega.
- La recepción inicial se realiza mediante ZIP y el mantenimiento posterior mediante un repositorio GitHub privado. Consulta [Entrega y versionado](/guia/entrega-y-versionado).

::: warning Producto en evolución
Hay flujos que requieren endurecimiento antes de operar con dinero real, especialmente idempotencia de pagos, transacciones de pedidos, acreditación de carteras y rotación de credenciales. Consulta [Seguridad](/operacion/seguridad) y [Pedidos y pagos](/negocio/pedidos-pagos).
:::

## Cómo mantener esta guía

Actualiza la documentación en el mismo cambio que modifique reglas de negocio, variables de entorno, permisos, estructura de datos, pasos de despliegue o integraciones. El comando `npm run build` compila la interfaz y publica también esta documentación.
