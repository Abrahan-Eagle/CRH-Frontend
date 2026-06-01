---
name: crh-aso-audit
description: >
    Auditoría ASO Google Play (y App Store) para app Iglesia CRH.
    Trigger: Publicar actualización store, optimizar conversión instalación.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [android/, ios/]
    auto_invoke:
        - "Auditoría ASO o publicación store"
    triggers: ASO, Google Play, App Store, store, publicación
    related-skills: [mobile-developer, crh-ui-design]
allowed-tools: [Read, Glob, Grep]
---

# CRH ASO Audit

## Checklist Google Play

| Elemento | Criterio CRH |
|----------|--------------|
| Título | Iglesia CRH + comunidad / eventos (sin keyword stuffing) |
| Descripción corta | Comunidad, avisos, eventos, devocional en 1 línea |
| Descripción larga | Conexión congregacional, streaming, privacidad |
| Screenshots | Home avisos, calendario eventos, devocional, live |
| Icono | Legible en tamaño pequeño; identidad iglesia |
| Categoría | Estilo de vida / Comunidad (validar con liderazgo) |
| Política privacidad | URL válida; datos miembros explicados |

## Keywords orientativas

- iglesia, comunidad, devocional, eventos, culto, ministerio, CRH
- Evitar marcas de otras iglesias o apps competidoras

## Coordinación técnica

- `android/app/build.gradle` — versionCode/Name
- FCM configurado para push
- `--dart-define=BUILD_TYPE=production` en release

## Entregable

Lista priorizada P0/P1/P2 con texto sugerido ES-VE para store listing.
