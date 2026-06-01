---
name: task-pipeline-ops
description: >
  Pipeline multi-paso CRH Frontend: Plan → Spec → Exec → Verify → Fix (máx. 3).
  Trigger: Pantallas complejas, varios providers, flujos multi-paso.
license: UNLICENSED
metadata:
  version: "1.0.0"
  related-skills: [jarvis-core, verification-before-completion]
---

# Task pipeline ops — CRH Frontend

Adaptado desde clawvis-openclaw.

## Pipeline

```
PLAN → SPEC → EXEC → VERIFY → FIX (≤3) → COMPLETE | ESCALATE
```

## Fase PLAN

- `.agents/plans/implementation_plan.md`
- Aprobación usuario

## Fase SPEC

| Paso | Done when |
|------|-----------|
| Pantalla | Widget monta sin overflow; analyze limpio |
| Provider | Estado coherente; tests si existen |

## Fase VERIFY

- `flutter analyze` + `flutter test` (evidencia en el turno)

## Cierre

- `walkthrough.md` + opcional `docs/active_context.md` vía `session-learner-ops`
