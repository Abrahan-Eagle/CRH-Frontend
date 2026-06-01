---
name: crh-jarvis-subagents-map
description: Mapeo tareas Iglesia CRH → subagents externos (lente VoltAgent) → skills crh-* obligatorias. No instalar subagents de terceros en el repo.
---

# crh-jarvis-subagents-map (Frontend)

Orquestación JARVIS Flutter: canon en skills `crh-*` locales. Ver tabla completa en Backend: `CRH-Backend/.agents/skills/crh-jarvis-subagents-map/SKILL.md`.

## Tareas Frontend frecuentes

| Tarea CRH | Canon obligatorio |
|-----------|-------------------|
| Pantallas / widgets | `crh-flutter-arch`, `crh-ui-design`, `flutter-expert` |
| Onboarding / signup | `crh-onboarding-cro`, `crh-signup-flow-cro`, `crh-onboarding-ui` |
| Eventos / anuncios UI | `crh-events-ui`, `crh-announcements-ui` |
| Donaciones UI | `crh-donations-ui` |
| Streaming UI | `crh-streaming-ui` |
| Chat grupal (fase 2) | `crh-group-chat-ui`, `crh-realtime-events` |
| ASO store | `crh-aso-audit` |
| Nueva feature producto | Spec Kit (specs en Backend) + skills UI del módulo |

## Reglas

1. Specs viven en **CRH-Backend** `specs/` — leer plan/tasks antes de implementar UI.
2. No hardcodear API URLs — `AppConfig.apiUrl`.
3. Invocar `verification-before-completion` antes de declarar pantalla lista.
