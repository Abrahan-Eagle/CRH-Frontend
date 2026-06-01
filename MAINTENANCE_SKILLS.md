# Guía de Mantenimiento de Skills — CRH Frontend

> Reglas para crear y mantener AI skills en CRH-Frontend (Flutter).

Ver también [CRH-Backend/MAINTENANCE_SKILLS.md](../CRH-Backend/MAINTENANCE_SKILLS.md) para convenciones compartidas.

## Agentes IA soportados

Solo **Cursor** + **Gemini**. Canónico: `.agents/skills/`. Gemini: `.gemini/skills` (symlink). No `.claude/` ni `.codex/`.

## Prefijos

- Skills de dominio UI: `crh-*-ui` o `crh-flutter-arch`, `crh-ui-design`
- Skills genéricos: sin prefijo (ej. `git-commit`, `flutter-expert`)

## Sync

```bash
python3 .agents/skills/sync.sh
bash .agents/skills/setup.sh
```

Verificación local: `flutter analyze` + `flutter test` antes de cerrar módulo.
