---
name: brainstorming-ops
description: >
  OBLIGATORIO antes de tareas complejas en CRH Frontend: pantallas, providers, navegación,
  flujos auth/onboarding. Propone alternativas y obtiene aprobación antes de codificar.
  Trigger: Planificar módulo, feature ambiguo, rediseño UI.
license: UNLICENSED
metadata:
  author: CRH Team
  version: "1.0.0"
  scope: [root]
  auto_invoke:
    - "Planificar desarrollo"
    - "Iniciar módulo"
  related-skills: [deep-interview-ops, jarvis-core, crh-ui-design]
---

# Brainstorming ops — CRH Frontend

Adaptado desde clawvis-openclaw.

## Regla

**NO escribir código** hasta diseño aprobado por el usuario.

## Cuándo se activa

- Nueva pantalla o flujo (ministerios, chat, perfil, ministerios)
- Cambios en Provider / navegación
- Tema, accesibilidad, responsive
- Integración API nueva en servicios

## Checklist

1. Leer `AGENTS.md`, `docs/active_context.md`, `crh-flutter-arch`, `crh-ui-design`.
2. Preguntas clarificadoras.
3. 2–3 alternativas (widgets, estado, rutas).
4. Plan en `.agents/plans/implementation_plan.md`.
5. OK del usuario.

## Secuencia

```
deep-interview-ops (si vago) → brainstorming-ops → task-pipeline-ops → ejecución
```

## Contexto CRH

- Siempre `AppConfig.apiUrl` — sin URLs hardcodeadas.
- Provider + servicios por feature.
- Tema: `corral_x_theme.dart`.
