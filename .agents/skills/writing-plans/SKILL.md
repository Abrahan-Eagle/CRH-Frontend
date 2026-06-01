---
name: writing-plans
description: >
  Plan bite-sized Flutter antes de codificar. .agents/plans/implementation_plan.md
  Trigger: Planificar desarrollo UI.
license: UNLICENSED
metadata:
  version: "1.0.0"
  upstream: superpowers:writing-plans
  auto_invoke:
    - "Planificar desarrollo"
---

# Writing plans — CRH Frontend

## Dónde guardar

- `.agents/plans/implementation_plan.md` (jarvis-core)
- Opcional: `.agents/plans/YYYY-MM-DD-<feature>.md`

## Encabezado

```markdown
# [Módulo] — Plan Frontend

**Goal:** ...
**Architecture:** Provider, screens, services, API contract.
**Tech:** Flutter 19, Provider, AppConfig.apiUrl.
```

## Tareas

Incluir paths: `lib/<feature>/...`, `test/...`

Verificación por tarea: `flutter analyze` + tests afectados.

Leer `crh-flutter-arch`, `crh-ui-design`, `docs/product-marketing-context.md` si hay copy.
