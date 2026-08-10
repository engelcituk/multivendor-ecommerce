import { withMermaid } from 'vitepress-plugin-mermaid'

export default withMermaid({
  lang: 'es-MX',
  title: 'Plazora',
  titleTemplate: ':title | Documentación',
  description: 'Guía técnica, funcional y operativa de la plataforma multivendedor Plazora.',
  base: '/docs/',
  outDir: '../public/docs',
  lastUpdated: true,
  head: [
    ['link', { rel: 'icon', type: 'image/png', href: '/docs/favicon.png' }],
    ['meta', { name: 'theme-color', media: '(prefers-color-scheme: light)', content: '#ffffff' }],
    ['meta', { name: 'theme-color', media: '(prefers-color-scheme: dark)', content: '#111827' }],
    ['meta', { property: 'og:type', content: 'website' }],
    ['meta', { property: 'og:locale', content: 'es_MX' }],
    ['meta', { property: 'og:site_name', content: 'Plazora Docs' }]
  ],
  markdown: {
    theme: { light: 'github-light', dark: 'github-dark' },
    lineNumbers: true
  },
  themeConfig: {
    logo: '/logo.svg',
    siteTitle: 'Plazora Docs',
    nav: [
      { text: 'Guía', link: '/guia/inicio-rapido' },
      { text: 'Arquitectura', link: '/arquitectura/vision-general' },
      { text: 'Negocio', link: '/negocio/modelo' },
      { text: 'Operación', link: '/operacion/base-de-datos' },
      { text: 'Referencia', link: '/referencia/modulos' }
    ],
    sidebar: [
      {
        text: 'Primeros pasos',
        items: [
          { text: 'Introducción', link: '/guia/introduccion' },
          { text: 'Entrega y versionado', link: '/guia/entrega-y-versionado' },
          { text: 'Inicio rápido', link: '/guia/inicio-rapido' },
          { text: 'Instalación local', link: '/guia/instalacion-local' },
          { text: 'Configuración', link: '/guia/configuracion' }
        ]
      },
      {
        text: 'Arquitectura',
        items: [
          { text: 'Visión general', link: '/arquitectura/vision-general' },
          { text: 'Stack tecnológico', link: '/arquitectura/stack' },
          { text: 'Datos y relaciones', link: '/arquitectura/datos' }
        ]
      },
      {
        text: 'Lógica de negocio',
        items: [
          { text: 'Modelo del marketplace', link: '/negocio/modelo' },
          { text: 'Usuarios y permisos', link: '/negocio/usuarios-permisos' },
          { text: 'Catálogo', link: '/negocio/catalogo' },
          { text: 'Pedidos y pagos', link: '/negocio/pedidos-pagos' },
          { text: 'Vendedores, KYC y retiros', link: '/negocio/vendedores-kyc-retiros' }
        ]
      },
      {
        text: 'Operación',
        items: [
          { text: 'Base de datos', link: '/operacion/base-de-datos' },
          { text: 'Despliegue en VPS', link: '/operacion/despliegue-vps' },
          { text: 'VPS frente a hosting compartido', link: '/operacion/vps-vs-hosting-compartido' },
          { text: 'Producción y tareas', link: '/operacion/produccion' },
          { text: 'Seguridad', link: '/operacion/seguridad' },
          { text: 'Solución de problemas', link: '/operacion/solucion-problemas' }
        ]
      },
      {
        text: 'Referencia',
        items: [
          { text: 'Módulos y rutas', link: '/referencia/modulos' },
          { text: 'Estructura del proyecto', link: '/referencia/estructura' },
          { text: 'Configuración y servicios', link: '/referencia/configuracion' },
          { text: 'Pruebas y calidad', link: '/referencia/pruebas' },
          { text: 'Glosario', link: '/referencia/glosario' }
        ]
      },
      {
        text: 'Decisiones',
        items: [
          { text: 'SQL frente a seeders', link: '/decisiones/001-sql-vs-seeders' }
        ]
      }
    ],
    search: {
      provider: 'local',
      options: {
        translations: {
          button: { buttonText: 'Buscar', buttonAriaLabel: 'Buscar en la documentación' },
          modal: {
            noResultsText: 'No se encontraron resultados para',
            resetButtonTitle: 'Limpiar búsqueda',
            footer: { selectText: 'seleccionar', navigateText: 'navegar', closeText: 'cerrar' }
          }
        }
      }
    },
    outline: { level: [2, 3], label: 'En esta página' },
    docFooter: { prev: 'Página anterior', next: 'Página siguiente' },
    lastUpdated: { text: 'Última actualización', formatOptions: { dateStyle: 'medium', timeStyle: 'short' } },
    darkModeSwitchLabel: 'Apariencia',
    lightModeSwitchTitle: 'Usar tema claro',
    darkModeSwitchTitle: 'Usar tema oscuro',
    sidebarMenuLabel: 'Menú',
    returnToTopLabel: 'Volver arriba',
    externalLinkIcon: true,
    footer: {
      message: 'Documentación técnica y funcional de Plazora.',
      copyright: 'Mantén esta guía sincronizada con cada cambio de arquitectura o negocio.'
    }
  },
  mermaid: {
    theme: 'base',
    themeVariables: {
      primaryColor: '#e8efff',
      primaryTextColor: '#172554',
      primaryBorderColor: '#3156d3',
      lineColor: '#64748b',
      secondaryColor: '#fff4e5',
      tertiaryColor: '#f8fafc',
      fontFamily: 'Inter, ui-sans-serif, system-ui, sans-serif'
    }
  }
})
