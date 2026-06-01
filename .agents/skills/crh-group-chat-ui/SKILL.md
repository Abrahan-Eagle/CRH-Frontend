---
name: crh-group-chat-ui
description: >
    UI chat grupal CRH (fase 2): conversaciones por ministerio/grupo. Stub enlaza crh-group-chat backend.
    Trigger: Pantallas chat grupal, mensajes ministerio.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/ministries/]
    auto_invoke:
        - "Trabajar con UI chat grupal"
    triggers: chat, grupo, ministerio, mensajes, conversación
    related-skills: [crh-ministries-ui, crh-flutter-arch, mobile-developer]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Group Chat UI (Fase 2)

> **Estado:** Stub — implementar cuando backend `crh-group-chat` esté activo.

## Pantallas previstas

- **GroupChatListScreen** — conversaciones del ministerio
- **GroupChatScreen** — mensajes en tiempo real (Pusher/Echo)
- Badge no leídos en tab ministerios

## UX

- Burbujas legibles; contraste modo oscuro
- Input fijo abajo; scroll reverse
- Indicador "escribiendo..." opcional
- Sin ofertas comerciales ni attachments no moderados (fase 1 solo texto)

## Integración

- API: ver skill backend `crh-group-chat`
- FCM: notificación fuera de conversación activa
- Polling fallback si WebSocket no conecta

## Verificación

- `flutter analyze` + prueba 2 dispositivos en mismo grupo
