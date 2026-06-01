---
name: crh-onboarding-ui
description: >
  Onboarding técnico CRH (Flutter): flujos por rol, endpoints, navegación post-auth.
  Complementa crh-onboarding-cro (CRO). Trigger: registro, wizard onboarding, activación perfil.
license: UNLICENSED
metadata:
  author: CRH Team
  version: "1.0"
  scope: [lib/auth/, lib/onboarding/]
  related-skills: [crh-onboarding-cro, crh-signup-flow-cro, crh-members, crh-flutter-arch]
---

# Onboarding UI — Iglesia CRH (Flutter)

Complementa `crh-onboarding-cro` (métricas/activación) con flujos técnicos.

## Roles y onboarding móvil

| Rol BD | Nombre | Onboarding móvil | Registro |
|--------|--------|------------------|----------|
| `member` | Miembro | Sí (2 pasos) | Email/password o OAuth (fase 2) |
| `leader` | Líder ministerio | Sí (3 pasos) | Invitación pastor + registro |
| `pastor` | Pastor | No MVP | Admin crea / invitación |
| `admin` | Admin | No | Interno |

## Flujo miembro (2 pasos)

```
Login/Register → Welcome carrusel (opcional)
→ Paso 1: Nombre, teléfono opcional, foto opcional
→ Paso 2: Permisos push (FCM) + intereses ministerio (opcional)
→ PUT /api/onboarding/complete
→ Home (anuncio + próximo evento + devocional)
```

## Flujo líder (3 pasos)

```
Invitación link → Register
→ Paso 1: Datos personales
→ Paso 2: Ministerio asignado (read-only o selección si múltiple)
→ Paso 3: Confirmación rol leader
→ Dashboard líder (fase 2)
```

## Endpoints previstos

```
POST /api/auth/register
POST /api/auth/login
PUT  /api/onboarding/complete   → { completed_onboarding: true }
GET  /api/profile
PUT  /api/profile
```

## Navegación

- Sin onboarding completo → `OnboardingScreen`
- Con token + onboarding OK → `MainShell` (tabs: Inicio, Eventos, Más)
- Invitación líder/pastor → deep link `crh://invite/{token}`

## UI

- Tema: `crh-ui-design`, `docs/BRAND_CRH.md`
- Errores genéricos; no exponer stack traces
- Validación formularios antes de submit
