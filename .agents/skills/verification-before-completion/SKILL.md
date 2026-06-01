---
name: verification-before-completion
description: >
  OBLIGATORIO antes de declarar cualquier tarea completada en CRH Frontend.
  Ejecuta verificación fresca (flutter test, analyze) y solo entonces afirma éxito.
  Trigger: Antes de cerrar módulo, commit, o decir "listo/analyze OK".
license: UNLICENSED
metadata:
  author: CRH Team
  version: "1.0.0"
  scope: [root]
  auto_invoke:
    - "Terminar módulo"
    - "Crear commit"
  related-skills: [systematic-debugging, jarvis-core, test-driven-development]
---

# Verificación antes de completar — CRH Frontend

Adaptado desde clawvis-openclaw / Superpowers.

## Ley de hierro

```
NINGÚN CLAIM DE COMPLETADO SIN EVIDENCIA FRESCA DE VERIFICACIÓN EN ESTE TURNO
```

## Puerta de verificación

1. **IDENTIFICAR** qué comando prueba el claim.
2. **EJECUTAR** el comando completo.
3. **LEER** exit code y errores.
4. **VERIFICAR** que el output confirma el claim.
5. **SOLO ENTONCES** declarar completado.

## Tabla por tipo de tarea (Flutter)

| Claim | Requiere | NO es suficiente |
|-------|----------|------------------|
| Tests pasan | `flutter test` → exit 0 | "Debería pasar" |
| Sin issues analyze | `flutter analyze` → No issues found | Solo leer código |
| Widget/módulo | `flutter test test/path/to_test.dart` | Test no ejecutado |
| Build web OK | `flutter build web` (si el cambio es web) | Solo `flutter run` manual |
| Commit hecho | `git log -1 --oneline` | "Hice commit" |
| Módulo cerrado | analyze + tests + walkthrough | Solo UI sin analyze |

## Comandos de referencia

```bash
cd /path/to/CRH-Frontend
flutter analyze
flutter test
flutter test test/ruta_especifica_test.dart
```

## Banderas rojas

- Cerrar módulo sin `flutter analyze`
- Ignorar tests `skip` sin documentar por qué
- BuildContext tras async sin patrón seguro del repo

## Integración con jarvis-core

Fase **Testing** del módulo: obligatorio `flutter analyze` y `flutter test` (o subset acordado).
