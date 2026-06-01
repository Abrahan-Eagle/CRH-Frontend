---
name: using-git-worktrees
description: >
  Worktree aislado para features Flutter CRH. Base dev. Trigger: módulo UI grande.
license: UNLICENSED
metadata:
  version: "1.0.0"
  upstream: superpowers:using-git-worktrees
---

# Using git worktrees — CRH Frontend

Mismas reglas que Backend: base **`dev`**, carpeta **`.worktrees/`** en gitignore.

## Baseline tras crear worktree

```bash
cd .worktrees/feature/nombre-modulo
flutter pub get
flutter analyze
flutter test
```

## Cierre

`finishing-a-development-branch` + `git worktree remove` cuando el usuario confirme.
