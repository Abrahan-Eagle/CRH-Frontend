---
name: crh-members-ui
description: >
    UI de miembros CRH: perfil, directorio, familias.
    Trigger: Pantallas de miembros, perfil, directorio, familias.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/members/]
    auto_invoke:
        - "Trabajar con UI de miembros"
    triggers: miembros, perfil, directorio, familia, members
    related-skills: [crh-flutter-arch, crh-ui-design, crh-members]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Members UI

## Pantallas

- **ProfileScreen** — ver/editar propio perfil
- **MemberDirectoryScreen** — listado con búsqueda
- **MemberDetailScreen** — ficha (según permisos)
- **FamilyScreen** — núcleo familiar

## UX

- Avatar circular con placeholder iniciales
- Campos sensibles ocultos si policy no permite
- Pull-to-refresh en directorio
- Indicador estado membresía (activo, visitante)

## API

- `GET /api/v1/members`, `PUT /api/v1/members/me`
