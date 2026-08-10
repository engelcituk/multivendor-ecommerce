# Entrega y versionado

Plazora se entrega inicialmente como un archivo ZIP. Ese archivo debe tratarse como una **versión de origen**, no como una carpeta para modificar directamente en producción.

## Flujo recomendado

```mermaid
flowchart LR
    ZIP[ZIP recibido] --> LOCAL[Instalación local]
    LOCAL --> QA[Pruebas y revisión]
    QA --> GIT[Repositorio privado]
    GIT --> DEV[Desarrollo por ramas]
    DEV --> REVIEW[Revisión y pruebas]
    REVIEW --> VPS[Despliegue desde Git]
    VPS --> BACKUP[Backups y monitoreo]
```

## 1. Conservar la entrega original

Guarda una copia intacta del ZIP y registra su fecha, versión y proveedor. Si recibes una suma de comprobación, valídala antes de extraer. No uses el ZIP original como carpeta de trabajo.

## 2. Probar primero en local

Extrae el proyecto en una carpeta nueva, configura PHP 8.5, crea la base `plazora`, importa `database/database.sql` y completa la [instalación local](/guia/instalacion-local).

Antes de respaldar el código:

- comprueba inicio, autenticación y paneles;
- revisa catálogo, carrito y checkout en sandbox;
- cambia credenciales administrativas de demostración;
- confirma que `php artisan optimize` y `npm run build` terminan correctamente;
- verifica que `/docs` sea accesible.

## 3. Crear un repositorio privado

GitHub debe almacenar el historial del **código fuente**, no secretos ni datos reales. Confirma que `.env`, `vendor`, `node_modules`, logs y archivos temporales permanezcan ignorados.

```bash
git init
git add .
git commit -m "Entrega inicial de Plazora"
git branch -M main
git remote add origin git@github.com:ORGANIZACION/plazora.git
git push -u origin main
git tag entrega-inicial
git push origin entrega-inicial
```

El repositorio debe ser privado, tener autenticación de dos factores y acceso limitado al equipo necesario. Protege `main` y trabaja mediante ramas y revisiones.

::: warning El repositorio no reemplaza todos los respaldos
La base de datos, `storage`, `public/uploads` y los secretos de cada entorno se respaldan por separado y cifrados. Sanitiza `database/database.sql` antes de versionarlo si alguna vez contiene información real o credenciales.
:::

## 4. Trabajar mediante Git

Cada cambio debe vivir en una rama, incluir documentación y pasar pruebas antes de integrarse:

```bash
git switch -c feature/nombre-del-cambio
# editar, probar y documentar
git add .
git commit -m "Describe el cambio"
git push -u origin feature/nombre-del-cambio
```

Integra mediante pull request. Marca releases estables con tags para saber exactamente qué versión está desplegada.

## 5. Bajar cambios en la VPS

La VPS debe clonar el repositorio privado usando una deploy key de sólo lectura o una credencial dedicada. Antes de actualizar, respalda datos y confirma que el árbol de trabajo esté limpio.

```bash
git fetch --prune origin
git status
git pull --ff-only origin main
composer install --no-dev --classmap-authoritative --no-interaction
npm ci
npm run build
php artisan migrate --force
php artisan optimize:clear
php artisan optimize
php artisan queue:restart
```

`--ff-only` evita crear merges accidentales directamente en el servidor. No desarrolles ni hagas commits desde la VPS.

## Versiones y archivos persistentes

Mantén `.env`, uploads y storage fuera del directorio reemplazable del release o enlázalos desde una ubicación compartida. Así, actualizar el código desde Git no elimina información persistente.

| Elemento | Git privado | Respaldo independiente |
| --- | --- | --- |
| Código y documentación | Sí | Opcional, además del ZIP original |
| `.env` y secretos | No | Sí, cifrado |
| Base de datos | No, salvo demo sanitizada | Sí |
| Uploads y storage | Normalmente no | Sí |
| `vendor`, `node_modules`, builds | No como fuente | Se regeneran en el release |
