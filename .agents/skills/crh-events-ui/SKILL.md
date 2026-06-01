---
name: crh-events-ui
description: >
    UI de eventos CRH: calendario, detalle, inscripción.
    Trigger: Pantallas de eventos, calendario, inscripción.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/events/]
    auto_invoke:
        - "Trabajar con UI de eventos"
    triggers: eventos, calendario, inscripción, events
    related-skills: [crh-flutter-arch, crh-events]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Events UI

## Pantallas

- **EventsCalendarScreen** — vista mes/semana/lista
- **EventDetailScreen** — info, mapa/ubicación, botón inscribirse
- **MyEventsScreen** — eventos inscritos

## Componentes

- `EventCard` — fecha destacada, título, ministerio
- Badge capacidad ("Quedan X cupos")
- Add-to-calendar opcional (fase 2)

## Estados

- Loading skeleton
- Empty: "No hay eventos este mes"
- Error con retry
