---
name: crh-realtime-events
description: >
  Eventos tiempo real CRH en Flutter. Pusher/Echo + FCM. Contrato schema_version/event_id espejo Backend.
  Trigger: Pusher, FCM, notificaciones push, tiempo real, idempotencia cliente.
license: UNLICENSED
metadata:
  author: CRH Team
  version: "1.1"
  related-skills: [crh-group-chat-ui, mobile-developer, crh-donations-ui, crh-events-ui]
---

# CRH Realtime Events (Flutter)

Canon Backend: [`CRH-Backend/.agents/skills/crh-realtime-events/SKILL.md`](../../../CRH-Backend/.agents/skills/crh-realtime-events/SKILL.md)

> **NO WebSocket directo.** Pusher Channels + FCM (canal `crh_fcm`).

## Cliente Flutter

- Laravel Echo + `pusher_channels_flutter` (o equivalente)
- FCM: registrar token → `POST /api/fcm/token`
- Keys Pusher vía `AppConfig` / env — **nunca hardcodear**
- Reconnect + refresh token Sanctum al expirar sesión
- Deep links desde push: anuncio, evento, stream URL

## Eventos a escuchar (`broadcastAs` / `data.type`)

| Evento Backend | `type` payload | Acción UI |
|----------------|----------------|-----------|
| `AnnouncementPublished` | `announcement.published` | Invalidar feed anuncios / navegar detalle |
| `EventReminder` | `event.reminder` | Snackbar o push → pantalla evento |
| `LiveStreamStarted` | `stream.started` | Badge en vivo + player/agenda |
| `GroupMessageSent` | `group.message` (fase 2) | Actualizar conversación ministerio |
| `DonationStatusChanged` | `donation.status_changed` | Actualizar estado donación + recibo si `confirmed` |
| `EventRegistrationUpdated` | `event.registration_updated` | Actualizar inscripción / check-in en UI evento |

## Contrato payload (espejo Backend)

Todo mensaje Pusher y `data` FCM incluyen metadatos de versión e idempotencia:

```json
{
  "schema_version": 1,
  "event_id": "uuid-v4",
  "type": "donation.status_changed",
  "entity_id": "42",
  "occurred_at": "2026-06-01T12:00:00Z",
  "payload": { }
}
```

| Campo | Regla cliente |
|-------|---------------|
| `schema_version` | Entero; si > versión local conocida → invalidar cache del módulo y refetch |
| `event_id` | UUID único; ignorar si ya procesado en sesión o persistido |
| `type` | Enrutar al handler del módulo (`announcement`, `donation`, `event`, etc.) |
| `entity_id` | ID del recurso afectado para navegación/refetch puntual |
| `payload` | Datos específicos del evento (estado donación, inscripción, etc.) |

## Reglas idempotencia y offline (Flutter)

1. **Sesión:** mantener `Set<String>` (o Hive/SharedPreferences) de `event_id` procesados; TTL opcional 24h.
2. **Duplicados:** si `event_id` ya visto → no actualizar UI ni provider.
3. **Cache por módulo:** al detectar `schema_version` mayor → `invalidate` + `refetch` del provider correspondiente.
4. **Offline:** encolar eventos por `event_id`; al reconectar, aplicar una sola vez cada uno.
5. **FCM background:** parsear `data.schema_version`, `data.event_id`, `data.type` antes de mostrar notificación o deep link.

## FCM payload mínimo (data)

```json
{
  "notification": { "title": "...", "body": "..." },
  "data": {
    "schema_version": "1",
    "event_id": "uuid",
    "type": "donation.status_changed",
    "entity_id": "42"
  }
}
```

## Implementación sugerida

```dart
// Pseudocódigo — RealtimeEventHandler
void onBroadcast(Map<String, dynamic> raw) {
  final eventId = raw['event_id'] as String?;
  if (eventId == null || _processedIds.contains(eventId)) return;

  final schemaVersion = raw['schema_version'] as int? ?? 1;
  if (schemaVersion > _localSchemaVersion) {
    _invalidateModuleCache(raw['type'] as String?);
  }

  _dispatchByType(raw['type'] as String?, raw);
  _processedIds.add(eventId);
}
```

## Skills relacionadas

- `mobile-developer` — FCM, deep links, lifecycle
- `crh-donations-ui` — UI estado donación tras `donation.status_changed`
- `crh-events-ui` — inscripción/check-in tras `event.registration_updated`
- `crh-group-chat-ui` — chat fase 2
