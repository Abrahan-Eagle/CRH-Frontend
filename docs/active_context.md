# Active context — CRH Frontend (memoria viva para Jarvis)

> **Leer al iniciar** junto con `AGENTS.md` y `.cursorrules`.

**Última actualización:** 2026-06-01

## Estado del proyecto

| Aspecto | Estado |
|---------|--------|
| Fase | **0 — Estructura IA + Spec Kit espejo** |
| Scaffold Flutter | Pendiente |
| Specs hub | `../CRH-Backend/specs/` |
| Rama activa | `main` |

## Decisiones Frontend

1. **Estado:** Provider (ChangeNotifier)
2. **Arquitectura:** modular por features
3. **API:** `AppConfig.apiUrl`
4. **Spec Kit:** espejo `.cursor/skills/speckit-*` (**20** skills, +review/accept/closeout); specs hub en Backend
5. **Mission closeout:** `/speckit-review|accept|closeout` — ver [FORENSE_SPEC_KITTY_RESUMEN.md](../CRH-Backend/docs/crh/FORENSE_SPEC_KITTY_RESUMEN.md)
6. **Extension workflows:** scripts en `../CRH-Backend/.specify/scripts/bash/`
7. **ZonixPharma forensics:** `crh-onboarding-ui`, `crh-realtime-events`, startup subset, `context-updater`, `qa-testing-playwright`
8. **Forenses Backend (hub):** clawvis, strangeverse, Zonix-Eats, spec-kit-extensions, spec-kitty, awesome-spec-kits, **spec-kit (base v0.9.0 sync)**. Docs: `../CRH-Backend/docs/crh/FORENSE_*.md`
9. **Realtime Flutter:** `crh-realtime-events` v1.1
10. **Skills:** **59** en `.agents/skills/`

## Próximos pasos (pendiente OK usuario)

1. `flutter create` + rama `dev`
2. Tema (`crh-ui-design`, `BRAND_CRH.md`) + auth screens
3. Implementar UI según `specs/001-auth-members/` tras OK

## Canónico Backend

[../CRH-Backend/docs/active_context.md](../CRH-Backend/docs/active_context.md)
