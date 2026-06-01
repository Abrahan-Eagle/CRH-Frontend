---
name: crh-devotionals-ui
description: >
    UI de devocionales CRH: lector diario, progreso, streak.
    Trigger: Pantallas de devocionales, lectura diaria.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/devotionals/]
    auto_invoke:
        - "Trabajar con UI de devocionales"
    triggers: devocional, lectura, devotional, biblia
    related-skills: [crh-flutter-arch, crh-devotionals]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Devotionals UI

## Pantallas

- **DevotionalTodayScreen** — entrada del día, pasaje, reflexión
- **DevotionalPlansScreen** — elegir plan activo
- **DevotionalProgressScreen** — streak, días completados

## UX

- Tipografía legible para texto largo
- Botón "Marcar como leído" prominente
- Celebración sutil al completar streak (7, 30 días)
- Compartir versículo (share sheet)

## Componentes

- `ScriptureBlock` — cita bíblica destacada
- `ProgressRing` — progreso del plan
