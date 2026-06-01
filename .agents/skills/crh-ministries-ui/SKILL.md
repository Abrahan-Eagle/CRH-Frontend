---
name: crh-ministries-ui
description: >
    UI de ministerios CRH: grupos, detalle, asistencia (líder).
    Trigger: Pantallas de ministerios, grupos, células.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/ministries/]
    auto_invoke:
        - "Trabajar con UI de ministerios"
    triggers: ministerios, grupos, célula, ministries
    related-skills: [crh-flutter-arch, crh-ministries]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Ministries UI

## Pantallas

- **MinistriesListScreen** — grid o lista por categoría
- **MinistryDetailScreen** — descripción, grupos, unirse
- **GroupDetailScreen** — miembros, próximas reuniones
- **AttendanceScreen** (líder) — checklist miembros

## UX

- Botón "Unirme" / "Solicitar unirse"
- Rol líder: FAB registrar asistencia
- Avatar stack miembros del grupo

## Fase 2

- Chat grupal integrado
