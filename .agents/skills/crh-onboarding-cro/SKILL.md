---
name: crh-onboarding-cro
description: >
    CRO del onboarding post-registro CRH: activación miembro, primer aviso, evento, devocional.
    Trigger: Mejorar conversión onboarding, reducir abandono wizard.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/auth/, lib/onboarding/]
    auto_invoke:
        - "Trabajar con onboarding o activación"
    triggers: onboarding, activación, CRO, wizard, abandono
    related-skills: [crh-signup-flow-cro, crh-flutter-arch, crh-ui-design]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Onboarding CRO

## Contexto

- Leer `docs/product-marketing-context.md` (Backend, canónico)
- Leer `docs/active_context.md`
- Skills: `crh-ui-design`, `crh-flutter-arch`

## Objetivo

**Time-to-value:** miembro ve valor congregacional en la primera sesión.

## Aha moments

| Actor | Aha |
|-------|-----|
| Miembro nuevo | Ver aviso pastoral + próximo evento + devocional del día |
| Líder | Acceder a su ministerio/grupo (fase 2) |

## Checklist CRO

1. Mapear pasos: welcome → perfil básico → home con contenido real
2. Medir fricción: campos, permisos push, errores red
3. Progress visible (stepper o indicador)
4. Copy ES-VE claro y cálido
5. Recuperación si abandona (guardar borrador perfil)

## Hipótesis típicas

- Mostrar home con avisos antes de pedir datos opcionales
- Explicar por qué se piden permisos push (eventos, devocional)
- Reducir pasos obligatorios al mínimo pastoral acordado

## Verificación

- `flutter analyze` + prueba manual emulador
