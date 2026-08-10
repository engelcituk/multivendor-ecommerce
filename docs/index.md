---
layout: home
title: Plazora
description: Guía técnica, funcional y operativa de Plazora.

hero:
  name: Plazora
  text: Documentación del marketplace
  tagline: Marketplace completamente en español, construido con un stack moderno y preparado para operar con control total en una VPS propia.
  image:
    src: /logo.svg
    alt: Identidad visual de Plazora
  actions:
    - theme: brand
      text: Empezar
      link: /guia/inicio-rapido
    - theme: alt
      text: Entender la arquitectura
      link: /arquitectura/vision-general

features:
  - title: Producto completamente en español
    details: Interfaz pública, paneles, mensajes y documentación pensados para usuarios y equipos de México y Latinoamérica.
    link: /guia/introduccion
    linkText: Conocer Plazora
  - title: Stack moderno y controlable
    details: Laravel 13, PHP 8.5, Vite y una arquitectura que puedes instalar, auditar y operar directamente.
    link: /arquitectura/stack
    linkText: Revisar el stack
  - title: Documentación propia
    details: La instalación, el negocio, los datos, la seguridad y la operación se entregan documentados junto con el código.
    link: /guia/inicio-rapido
    linkText: Explorar las guías
  - title: Entrega controlada
    details: Recibe el ZIP, valida Plazora localmente, respalda el código en GitHub privado y despliega cambios desde Git.
    link: /guia/entrega-y-versionado
    linkText: Ver el flujo de entrega
  - title: Instalación reproducible
    details: Configura PHP, Node.js, MySQL, el almacenamiento y la base de datos correcta sin depender de conocimiento tribal.
    link: /guia/instalacion-local
    linkText: Instalar en local
  - title: Negocio documentado
    details: Comprende clientes, vendedores, administradores, pedidos por tienda, comisiones, KYC y retiros.
    link: /negocio/modelo
    linkText: Explorar el dominio
  - title: Operación segura
    details: Despliega en una VPS, ejecuta colas y tareas programadas, rota credenciales y evita reinicios destructivos.
    link: /operacion/despliegue-vps
    linkText: Preparar producción
  - title: Decisiones con contexto
    details: Conoce por qué la instalación de demostración usa database.sql y por qué los seeders no producen hoy el mismo sistema.
    link: /decisiones/001-sql-vs-seeders
    linkText: Leer la decisión
---

## ¿Para quién es esta documentación?

Esta guía es la fuente de verdad compartida para desarrollo, soporte, infraestructura, producto y futuros compradores de Plazora. Describe **el comportamiento que existe hoy** y separa las recomendaciones de los riesgos conocidos.

## La propuesta de Plazora

Plazora no se entrega únicamente como un conjunto de archivos. La propuesta reúne tres elementos que normalmente terminan separados: una experiencia completamente en español, un stack moderno que el comprador puede controlar y documentación propia para instalar, entender y operar el sistema sin depender permanentemente del proveedor original.

::: tip Ruta recomendada
Si es tu primer contacto con el proyecto, sigue [Inicio rápido](/guia/inicio-rapido) y después revisa el [modelo del marketplace](/negocio/modelo).
:::
