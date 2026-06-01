---
name: crh-ui-design
description: >
    Sistema de diseño CRH: tema iglesia, paleta, tipografía, componentes reutilizables.
    Trigger: Tema, colores, tipografía, componentes visuales, diseño UI.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/config/]
    auto_invoke:
        - "Trabajar con tema, colores o diseño"
    triggers: tema, theme, colores, diseño, UI, tipografía
    related-skills: [ui-ux-pro-max, responsive-design]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH UI Design

## Principios

- Calidez y claridad (app de comunidad, no corporativo frío)
- Legibilidad en móvil (tipografía ≥ 14sp cuerpo)
- Modo claro y oscuro
- Accesibilidad: contraste WCAG AA, touch targets ≥ 48dp

## Paleta sugerida (ajustar con marca iglesia)

| Token | Uso |
|-------|-----|
| primary | Acciones principales, app bar |
| secondary | Acentos, badges ministerio |
| surface | Fondos de cards |
| onPrimary / onSurface | Texto sobre fondos |

## Componentes base

- `CrhPrimaryButton`, `CrhOutlinedButton`
- `CrhCard`, `CrhListTile`
- `CrhAppBar` con título centrado o leading back
- `CrhEmptyState`, `CrhErrorBanner`

## Do / Don't

- Do: usar `Theme.of(context)` y tokens centralizados
- Don't: `Colors.*` sueltos fuera del tema
- Don't: iconografía genérica que no encaje con contexto pastoral
