---
name: crh-streaming-ui
description: >
    UI de streaming CRH: player live, badge en vivo, agenda.
    Trigger: Pantallas de streaming, transmisión en vivo.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/streaming/]
    auto_invoke:
        - "Trabajar con UI de streaming"
    triggers: streaming, live, en vivo, transmisión
    related-skills: [crh-flutter-arch, crh-streaming, mobile-developer]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Streaming UI

## Pantallas

- **LiveStreamScreen** — player embed (YouTube/Vimeo) o WebView
- **StreamScheduleScreen** — próximas transmisiones
- **HomeLiveBanner** — widget "En vivo ahora" en home

## UX

- Badge rojo "EN VIVO" pulsante sutil
- Fullscreen opcional en player
- Fallback si no hay transmisión: countdown próximo servicio
- Polling o refresh cada 60s en estado live

## Plataformas

- Android/iOS: `youtube_player_flutter` o WebView según evaluación
- Web: iframe embed

## Accesibilidad

- Controles player accesibles
- Texto alternativo si stream no carga
