---
name: crh-announcements-ui
description: >
    UI de anuncios CRH: feed, detalle, filtros por categoría.
    Trigger: Pantallas de anuncios, feed, avisos.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/announcements/]
    auto_invoke:
        - "Trabajar con UI de anuncios"
    triggers: anuncios, avisos, feed, announcements
    related-skills: [crh-flutter-arch, crh-announcements]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Announcements UI

## Pantallas

- **AnnouncementsFeedScreen** — lista paginada, pin arriba
- **AnnouncementDetailScreen** — cuerpo completo, fecha, categoría

## UX

- Chip categoría (General, Urgente, Ministerio)
- Destacado visual para urgentes
- Infinite scroll o paginación
- Deep link a detalle desde push notification

## Admin (fase 2)

- Crear/editar desde app o solo web admin
