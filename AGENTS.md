# AGENTS.md - CRH Frontend (Flutter)

> Instrucciones para AI coding agents trabajando en el frontend de Iglesia CRH.
> Documentación canónica en **CRH-Backend:** `docs/PRODUCT_VISION.md`, `docs/MODULES.md`, [`docs/product-marketing-context.md`](../CRH-Backend/docs/product-marketing-context.md).

> **Memoria viva:** [`docs/active_context.md`](docs/active_context.md) — leer al iniciar.

## Cambios recientes

- **2026-06-01:** **Workshop Fase 0 consolidado** (bloques 9–21) en Backend [docs/crh/WORKSHOP_DECISIONS.md](../CRH-Backend/docs/crh/WORKSHOP_DECISIONS.md): navegación MVP (tabs Inicio/Eventos/Devocional/Más), login Google, push MVP vs Fase 2, marca/UI. Constitution Backend **v1.2.0 → v1.3.0** (roles 8 niveles + scopes).
- **2026-06-01:** Auditoría forense **github/spec-kit → CRH**: sync v0.9.0 parcial; hub [FORENSE_SPEC_KIT_RESUMEN.md](../CRH-Backend/docs/crh/FORENSE_SPEC_KIT_RESUMEN.md)
- **2026-06-01:** Adaptación forense **awesome-spec-kits → CRH (referencia)**: taxonomía SD-X; hub [FORENSE_AWESOME_SPEC_KITS_RESUMEN.md](../CRH-Backend/docs/crh/FORENSE_AWESOME_SPEC_KITS_RESUMEN.md). Sin instalar.
- **2026-06-01:** Adaptación forense **spec-kitty → CRH (subset)**: espejo skills `speckit-review|accept|closeout` (20 SDD); hub [FORENSE_SPEC_KITTY_RESUMEN.md](../CRH-Backend/docs/crh/FORENSE_SPEC_KITTY_RESUMEN.md).
- **2026-06-01:** Adaptación forense **spec-kit-extensions → CRH**: workflows bugfix/modify/hotfix, skills `speckit-bugfix|modify|hotfix` (17 SDD en ese hito; **superseded → 20 SDD**, constitution **v1.2.0**), [FORENSE_SPEC_KIT_EXTENSIONS_RESUMEN.md](../CRH-Backend/docs/crh/FORENSE_SPEC_KIT_EXTENSIONS_RESUMEN.md).
- **2026-06-01:** Auditoría forense CRH: `crh-realtime-events` Flutter enriquecido (espejo Backend: `schema_version`, `event_id`, idempotencia). Hub forense en Backend: `docs/crh/FORENSE_CLAWVIS`, `FORENSE_STRANGEVERSE`, `FORENSE_ZONIX_EATS`.
- **2026-06-01:** ZonixPharma → CRH: Spec Kit espejo, `crh-onboarding-ui`, `crh-realtime-events`, startup skills subset, `context-updater`, `qa-testing-playwright`.
- **2026-06-01:** Skills CRO + adaptación forense CorralX.
- **2026-06-01:** Estructura IA JARVIS inicial.

---

## Brand y Spec Kit

- **Brand:** [../CRH-Backend/docs/BRAND_CRH.md](../CRH-Backend/docs/BRAND_CRH.md)
- **Specs (hub Backend):** [../CRH-Backend/specs/](../CRH-Backend/specs/)
- **Guía SDD:** [../CRH-Backend/docs/crh/SPEC_KIT_CRH.md](../CRH-Backend/docs/crh/SPEC_KIT_CRH.md)
- **Spec Kit:** [github/spec-kit](https://github.com/github/spec-kit) **v0.9.0** (sync parcial; espejo Backend)
- **Auditoría base:** [FORENSE_SPEC_KIT_RESUMEN.md](../CRH-Backend/docs/crh/FORENSE_SPEC_KIT_RESUMEN.md)
- **Skills SDD:** `.cursor/skills/speckit-*` (**20** skills, espejo Backend)

---

## Project Overview

| Métrica | Valor |
| ------------------------ | ---------------------------------------- |
| **Producto** | App Iglesia CRH — gestión congregacional |
| **Framework** | Flutter / Dart (pendiente scaffold) |
| **Plataformas** | Android, iOS, Web |
| **Estado** | Fase 0 — Estructura IA + adaptación forense |
| **API Backend** | CRH-Backend (Laravel REST) |
| **Última actualización** | Junio 2026 |
| **Agentes IA** | Cursor + Gemini (no Claude/Codex/OpenCode) |

Skills: ver [MAINTENANCE_SKILLS.md](MAINTENANCE_SKILLS.md).

## Agentes IA soportados

| Agente | Rutas | Uso |
|--------|-------|-----|
| **Cursor** | `.cursorrules`, `.cursor/skills/speckit-*`, `.agents/skills/` | SDD + JARVIS (primario) |
| **Gemini** | `.gemini/skills` → `.agents/skills/` | Skills dominio (symlink) |

Fuente canónica: **`.agents/skills/`**. Specs/scripts SDD en Backend. No `.claude/` ni `.codex/`.

---

## Panel de Expertos JARVIS

Mismas reglas que Backend. Especialización CRH: UI congregacional, accesibilidad, mobile (FCM, deep links).

### Especialización CRH

- Módulos UI: miembros, eventos, anuncios, donaciones, ministerios, devocionales, streaming
- Patrón: Provider + estructura modular por features
- API: siempre `AppConfig.apiUrl` (sin URLs hardcodeadas)

---

## Collaboration Rules

1. **SIEMPRE PREGUNTAR** antes de realizar cualquier acción
2. **NUNCA push/merge** sin orden explícita
3. **Usuario prueba primero** en emulador/dispositivo
4. Commits solo cuando el usuario lo pida

---

## Git Workflow

`dev` → pruebas → `main` → producción

---

## Setup Commands (cuando exista scaffold Flutter)

```bash
flutter pub get
flutter run -d <device>
flutter analyze
flutter test
```

---

## Available Skills

<!-- SKILLS-START -->
| Skill | Descripción | Ruta |
|-------|-------------|------|
| `brainstorming-ops` | OBLIGATORIO antes de tareas complejas en CRH Frontend: pantallas, providers, navegación, flujos auth/onboarding. Propone alternativas y obtiene aprobación antes de codificar. | [.agents/skills/brainstorming-ops/SKILL.md](.agents/skills/brainstorming-ops/SKILL.md) |
| `clean-architecture` | Clean Architecture, SOLID principles, dependency injection, separation of concerns. | [.agents/skills/clean-architecture/SKILL.md](.agents/skills/clean-architecture/SKILL.md) |
| `code-review-playbook` | Use this skill when conducting or improving code reviews. Provides structured review processes, conventional comments patterns, language-specific checklists, and feedback templates. Use when reviewing PRs or standardizing review practices. | [.agents/skills/code-review-playbook/SKILL.md](.agents/skills/code-review-playbook/SKILL.md) |
| `context-updater` | Actualizar el contexto de sesión para que la IA "recuerde" entre sesiones. Resumir cambios relevantes en docs/active_context.md al cerrar o finalizar una sesión de trabajo significativa. | [.agents/skills/context-updater/SKILL.md](.agents/skills/context-updater/SKILL.md) |
| **`crh-announcements-ui`** | **UI de anuncios CRH: feed, detalle, filtros por categoría.** | [.agents/skills/crh-announcements-ui/SKILL.md](.agents/skills/crh-announcements-ui/SKILL.md) |
| **`crh-aso-audit`** | **Auditoría ASO Google Play (y App Store) para app Iglesia CRH.** | [.agents/skills/crh-aso-audit/SKILL.md](.agents/skills/crh-aso-audit/SKILL.md) |
| **`crh-devotionals-ui`** | **UI de devocionales CRH: lector diario, progreso, streak.** | [.agents/skills/crh-devotionals-ui/SKILL.md](.agents/skills/crh-devotionals-ui/SKILL.md) |
| **`crh-donations-ui`** | **UI de donaciones CRH: flujo diezmo/ofrenda, comprobante, historial.** | [.agents/skills/crh-donations-ui/SKILL.md](.agents/skills/crh-donations-ui/SKILL.md) |
| **`crh-empresa-ve`** | **Constitución y gobierno corporativo Iglesia CRH en Venezuela (C.A., RIF, banco, SAFE, laboral). Checklist T+0–T+30. Invocar crh-startup-context primero. No sustituye abogado ni contador.** | [.agents/skills/crh-empresa-ve/SKILL.md](.agents/skills/crh-empresa-ve/SKILL.md) |
| **`crh-events-ui`** | **UI de eventos CRH: calendario, detalle, inscripción.** | [.agents/skills/crh-events-ui/SKILL.md](.agents/skills/crh-events-ui/SKILL.md) |
| **`crh-flutter-arch`** | **Arquitectura Flutter CRH: estructura modular por features, Provider, navegación, AppConfig, ApiService.** | [.agents/skills/crh-flutter-arch/SKILL.md](.agents/skills/crh-flutter-arch/SKILL.md) |
| **`crh-founder-ops-index`** | **Índice curado CEO/CTO/TPM para founder Iglesia CRH. Enlaces a kuchin awesome-ceo/cto/tpm. Cifras solo desde crh-startup-context y pack Lanzamiento.** | [.agents/skills/crh-founder-ops-index/SKILL.md](.agents/skills/crh-founder-ops-index/SKILL.md) |
| **`crh-group-chat-ui`** | **UI chat grupal CRH (fase 2): conversaciones por ministerio/grupo. Stub enlaza crh-group-chat backend.** | [.agents/skills/crh-group-chat-ui/SKILL.md](.agents/skills/crh-group-chat-ui/SKILL.md) |
| **`crh-investor-materials`** | **Materiales inversor Iglesia CRH — data room ligero, checklist due diligence, gaps pack Lanzamiento. Alineado a docs/Lanzamiento y CHECKLIST_PRE_INVERSOR. No sustituye abogado ni contador.** | [.agents/skills/crh-investor-materials/SKILL.md](.agents/skills/crh-investor-materials/SKILL.md) |
| **`crh-jarvis-subagents-map`** | **Mapeo tareas Iglesia CRH → subagents externos (lente VoltAgent) → skills crh-* obligatorias. No instalar subagents de terceros en el repo.** | [.agents/skills/crh-jarvis-subagents-map/SKILL.md](.agents/skills/crh-jarvis-subagents-map/SKILL.md) |
| **`crh-lanzamiento-roles`** | **Panel de roles y competencias del pack Lanzamiento Iglesia CRH. Mapea rol humano → skills → Docs/Empresa/Sistema → skills agente. Usar al redactar pack inversor, constitución VE o priorizar lentes JARVIS.** | [.agents/skills/crh-lanzamiento-roles/SKILL.md](.agents/skills/crh-lanzamiento-roles/SKILL.md) |
| **`crh-launch-piloto`** | **Plan de acción y ejecución del piloto Iglesia CRH. Calendario T+0 (wire) → Day-D (T+90) → M12 post-Day-D. KPIs iglesias, roles Co-CEO/Sales/CS. Invocar crh-startup-context si hay fechas o caja.** | [.agents/skills/crh-launch-piloto/SKILL.md](.agents/skills/crh-launch-piloto/SKILL.md) |
| **`crh-legal-contracts-ve`** | **Revisión checklist de contratos VE (marco iglesia B2B, SAFE, laboral). Salida [PENDIENTE abogado]. Invocar crh-empresa-ve y crh-content-moderation primero.** | [.agents/skills/crh-legal-contracts-ve/SKILL.md](.agents/skills/crh-legal-contracts-ve/SKILL.md) |
| **`crh-members-ui`** | **UI de miembros CRH: perfil, directorio, familias.** | [.agents/skills/crh-members-ui/SKILL.md](.agents/skills/crh-members-ui/SKILL.md) |
| **`crh-ministries-ui`** | **UI de ministerios CRH: grupos, detalle, asistencia (líder).** | [.agents/skills/crh-ministries-ui/SKILL.md](.agents/skills/crh-ministries-ui/SKILL.md) |
| **`crh-onboarding-cro`** | **CRO del onboarding post-registro CRH: activación miembro, primer aviso, evento, devocional.** | [.agents/skills/crh-onboarding-cro/SKILL.md](.agents/skills/crh-onboarding-cro/SKILL.md) |
| **`crh-onboarding-ui`** | **Onboarding técnico CRH (Flutter): flujos por rol, endpoints, navegación post-auth. Complementa crh-onboarding-cro (CRO).** | [.agents/skills/crh-onboarding-ui/SKILL.md](.agents/skills/crh-onboarding-ui/SKILL.md) |
| **`crh-realtime-events`** | **Eventos tiempo real CRH en Flutter. Pusher/Echo + FCM. Contrato schema_version/event_id espejo Backend.** | [.agents/skills/crh-realtime-events/SKILL.md](.agents/skills/crh-realtime-events/SKILL.md) |
| **`crh-signup-flow-cro`** | **CRO del flujo registro/login CRH: email, teléfono opcional, fricción y abandono.** | [.agents/skills/crh-signup-flow-cro/SKILL.md](.agents/skills/crh-signup-flow-cro/SKILL.md) |
| **`crh-startup-context`** | **Contexto canónico Iglesia CRH (SaaS congregacional / multi-iglesia). Leer ANTES de finanzas, pitch o auditoría pack. Cifras solo desde docs/Lanzamiento aprobados — no inventar.** | [.agents/skills/crh-startup-context/SKILL.md](.agents/skills/crh-startup-context/SKILL.md) |
| **`crh-streaming-ui`** | **UI de streaming CRH: player live, badge en vivo, agenda.** | [.agents/skills/crh-streaming-ui/SKILL.md](.agents/skills/crh-streaming-ui/SKILL.md) |
| **`crh-ui-design`** | **Sistema de diseño CRH: tema iglesia, paleta, tipografía, componentes reutilizables.** | [.agents/skills/crh-ui-design/SKILL.md](.agents/skills/crh-ui-design/SKILL.md) |
| `deep-interview-ops` | Entrevista socrática antes de tareas ambiguas en CRH Frontend. Gate claridad >= 3.5/5. | [.agents/skills/deep-interview-ops/SKILL.md](.agents/skills/deep-interview-ops/SKILL.md) |
| `documentar-avances` | Al finalizar una tarea relevante, proponer el párrafo para "Cambios recientes" en AGENTS.md y/o README. El usuario aprueba antes de que se escriba en el repo. | [.agents/skills/documentar-avances/SKILL.md](.agents/skills/documentar-avances/SKILL.md) |
| `executing-plans` | Ejecutar plan Flutter paso a paso. | [.agents/skills/executing-plans/SKILL.md](.agents/skills/executing-plans/SKILL.md) |
| `finishing-a-development-branch` | Cerrar rama feature: tests, opciones merge/PR/keep/discard. Base dev. | [.agents/skills/finishing-a-development-branch/SKILL.md](.agents/skills/finishing-a-development-branch/SKILL.md) |
| `flutter-animations` | Flutter animations, transitions, AnimationController, Tween, Hero, implicit animations. | [.agents/skills/flutter-animations/SKILL.md](.agents/skills/flutter-animations/SKILL.md) |
| `flutter-expert` | Flutter advanced patterns, widgets, lifecycle, state management, performance. | [.agents/skills/flutter-expert/SKILL.md](.agents/skills/flutter-expert/SKILL.md) |
| `git-commit` | Execute git commit with conventional commit message analysis, intelligent staging, and message generation. Use when user asks to commit changes, create a git commit, or mentions "/commit". Supports: (1) Auto-detecting type and scope from changes, (2) Generating conventional commit messages from diff, (3) Interactive commit with optional type/scope/description overrides, (4) Intelligent file staging for logical grouping | [.agents/skills/git-commit/SKILL.md](.agents/skills/git-commit/SKILL.md) |
| `github-code-review` | Comprehensive GitHub code review with AI-powered swarm coordination | [.agents/skills/github-code-review/SKILL.md](.agents/skills/github-code-review/SKILL.md) |
| **`jarvis-core`** | **Protocolo base del sistema JARVIS para CRH (Iglesia CRH). Define las reglas de honestidad, foco de negocio y el flujo de trabajo obligatorio por módulos.** | [.agents/skills/jarvis-core/SKILL.md](.agents/skills/jarvis-core/SKILL.md) |
| `jarvis-experts` | Panel de Expertos JARVIS para CRH Frontend. Roles y combinaciones para UI Flutter. | [.agents/skills/jarvis-experts/SKILL.md](.agents/skills/jarvis-experts/SKILL.md) |
| `mobile-developer` | Mobile development patterns, platform-specific code, deep linking, push notifications. | [.agents/skills/mobile-developer/SKILL.md](.agents/skills/mobile-developer/SKILL.md) |
| `playwright-skill` | Complete browser automation with Playwright. Auto-detects dev servers, writes clean test scripts to /tmp. Test pages, fill forms, take screenshots, check responsive design, validate UX, test login flows, check links, automate any browser task. Use when user wants to test websites, automate browser interactions, validate web functionality, or perform any browser-based testing. | [.agents/skills/playwright-skill/SKILL.md](.agents/skills/playwright-skill/SKILL.md) |
| `qa-testing-playwright` | E2E web testing with Playwright. Use when writing tests, debugging flakes, or setting up CI with selectors, sharding, and network mocking. | [.agents/skills/qa-testing-playwright/SKILL.md](.agents/skills/qa-testing-playwright/SKILL.md) |
| `receiving-code-review` | Recibir feedback de review UI/código con verificación. | [.agents/skills/receiving-code-review/SKILL.md](.agents/skills/receiving-code-review/SKILL.md) |
| `requesting-code-review` | Code review antes de merge. | [.agents/skills/requesting-code-review/SKILL.md](.agents/skills/requesting-code-review/SKILL.md) |
| `responsive-design` | Responsive and adaptive layouts, MediaQuery, LayoutBuilder, breakpoints. | [.agents/skills/responsive-design/SKILL.md](.agents/skills/responsive-design/SKILL.md) |
| `session-learner-ops` | Tras cerrar un módulo significativo: extraer patrones y actualizar memoria en docs/active_context.md y walkthrough. | [.agents/skills/session-learner-ops/SKILL.md](.agents/skills/session-learner-ops/SKILL.md) |
| `skill-creator` | Guide for creating effective skills. This skill should be used when users want to create a new skill (or update an existing skill) that extends Claude's capabilities with specialized knowledge, workflows, or tool integrations. | [.agents/skills/skill-creator/SKILL.md](.agents/skills/skill-creator/SKILL.md) |
| `speckit-git-commit` | Auto-commit changes after a Spec Kit command completes | [.agents/skills/speckit-git-commit/SKILL.md](.agents/skills/speckit-git-commit/SKILL.md) |
| `speckit-git-feature` | Create a feature branch with sequential or timestamp numbering | [.agents/skills/speckit-git-feature/SKILL.md](.agents/skills/speckit-git-feature/SKILL.md) |
| `speckit-git-initialize` | Initialize a Git repository with an initial commit | [.agents/skills/speckit-git-initialize/SKILL.md](.agents/skills/speckit-git-initialize/SKILL.md) |
| `speckit-git-remote` | Detect Git remote URL for GitHub integration | [.agents/skills/speckit-git-remote/SKILL.md](.agents/skills/speckit-git-remote/SKILL.md) |
| `speckit-git-validate` | Validate current branch follows feature branch naming conventions | [.agents/skills/speckit-git-validate/SKILL.md](.agents/skills/speckit-git-validate/SKILL.md) |
| `structured-commits-ops` | Commits con trailers de decisión en CRH Frontend. Complementa git-commit. | [.agents/skills/structured-commits-ops/SKILL.md](.agents/skills/structured-commits-ops/SKILL.md) |
| `systematic-debugging` | Use when encountering any bug, test failure, or unexpected behavior, before proposing fixes | [.agents/skills/systematic-debugging/SKILL.md](.agents/skills/systematic-debugging/SKILL.md) |
| `task-pipeline-ops` | Pipeline multi-paso CRH Frontend: Plan → Spec → Exec → Verify → Fix (máx. 3). | [.agents/skills/task-pipeline-ops/SKILL.md](.agents/skills/task-pipeline-ops/SKILL.md) |
| `test-driven-development` | Use when implementing any feature or bugfix, before writing implementation code | [.agents/skills/test-driven-development/SKILL.md](.agents/skills/test-driven-development/SKILL.md) |
| `ui-ux-pro-max` | Professional UI/UX design patterns, accessibility, user experience, visual hierarchy. | [.agents/skills/ui-ux-pro-max/SKILL.md](.agents/skills/ui-ux-pro-max/SKILL.md) |
| `using-git-worktrees` | Worktree aislado para features Flutter CRH. Base dev. | [.agents/skills/using-git-worktrees/SKILL.md](.agents/skills/using-git-worktrees/SKILL.md) |
| `verification-before-completion` | OBLIGATORIO antes de declarar cualquier tarea completada en CRH Frontend. Ejecuta verificación fresca (flutter test, analyze) y solo entonces afirma éxito. | [.agents/skills/verification-before-completion/SKILL.md](.agents/skills/verification-before-completion/SKILL.md) |
| `webapp-testing` | Toolkit for interacting with and testing local web applications using Playwright. Supports verifying frontend functionality, debugging UI behavior, capturing browser screenshots, and viewing browser logs. | [.agents/skills/webapp-testing/SKILL.md](.agents/skills/webapp-testing/SKILL.md) |
| `writing-plans` | Plan bite-sized Flutter antes de codificar. .agents/plans/implementation_plan.md | [.agents/skills/writing-plans/SKILL.md](.agents/skills/writing-plans/SKILL.md) |
<!-- SKILLS-END -->

---

## Auto-invoke Skills

<!-- AUTO-INVOKE-START -->
| Acción | Skill |
|--------|-------|
| Auditoría ASO o publicación store | `crh-aso-audit` |
| Crear commit | `verification-before-completion` |
| Cualquier tarea no trivial | `jarvis-experts` |
| Decisión cross-rol | `jarvis-experts` |
| Definir alcance de un módulo | `jarvis-experts` |
| Iniciar módulo | `brainstorming-ops` |
| Iniciar módulo | `jarvis-core` |
| Planificar desarrollo | `brainstorming-ops` |
| Planificar desarrollo | `jarvis-core` |
| Planificar desarrollo | `writing-plans` |
| Terminar módulo | `finishing-a-development-branch` |
| Terminar módulo | `jarvis-core` |
| Terminar módulo | `session-learner-ops` |
| Terminar módulo | `verification-before-completion` |
| Trabajar con UI chat grupal | `crh-group-chat-ui` |
| Trabajar con UI de anuncios | `crh-announcements-ui` |
| Trabajar con UI de devocionales | `crh-devotionals-ui` |
| Trabajar con UI de donaciones | `crh-donations-ui` |
| Trabajar con UI de eventos | `crh-events-ui` |
| Trabajar con UI de miembros | `crh-members-ui` |
| Trabajar con UI de ministerios | `crh-ministries-ui` |
| Trabajar con UI de streaming | `crh-streaming-ui` |
| Trabajar con estructura o providers | `crh-flutter-arch` |
| Trabajar con onboarding o activación | `crh-onboarding-cro` |
| Trabajar con registro o login | `crh-signup-flow-cro` |
| Trabajar con tema, colores o diseño | `crh-ui-design` |
<!-- AUTO-INVOKE-END -->

---

**Contexto activo:** `docs/active_context.md`
