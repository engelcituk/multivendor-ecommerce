# Visión general

Plazora es un monolito modular Laravel: comparte despliegue y base de datos, pero separa responsabilidades mediante rutas, controladores, modelos, servicios y vistas.

```mermaid
flowchart TB
    Browser[Navegador] --> Web[Laravel Web]
    Web --> Public[Tienda y cuenta]
    Web --> Vendor[Panel vendedor]
    Web --> Admin[Panel administrativo]
    Public --> Domain[Servicios y modelos]
    Vendor --> Domain
    Admin --> Domain
    Domain --> DB[(MySQL)]
    Domain --> Files[Storage y uploads]
    Domain --> Cache[(Caché)]
    Domain --> Payments[PayPal / Stripe / Razorpay]
    Scheduler[Scheduler y colas] --> Domain
```

## Límites de acceso

- Las rutas públicas permiten explorar catálogo y contenido.
- Las acciones de cuenta requieren sesión y, según el caso, correo verificado.
- El panel vendedor requiere rol `vendor`; operaciones sensibles además requieren KYC aprobado.
- El panel administrativo usa el guard `admin` y permisos de Spatie.

## Flujo de una petición

```mermaid
sequenceDiagram
    actor U as Usuario
    participant R as Ruta y middleware
    participant C as Controlador
    participant S as Servicio
    participant M as Modelos Eloquent
    participant D as MySQL
    U->>R: Petición HTTP
    R->>C: Sesión, rol y permisos validados
    C->>S: Ejecuta caso de uso
    S->>M: Consulta o modifica dominio
    M->>D: SQL
    D-->>M: Datos
    M-->>C: Resultado
    C-->>U: Blade, redirección o JSON
```

## Principios para extender el sistema

1. Mantén reglas que cruzan varios modelos dentro de servicios y transacciones.
2. Autoriza por recurso, no sólo por prefijo de ruta.
3. Trata callbacks de pago y retiros como operaciones idempotentes.
4. No expongas documentos privados mediante rutas públicas de archivos.
5. Documenta toda nueva variable, permiso, estado o tarea programada.
