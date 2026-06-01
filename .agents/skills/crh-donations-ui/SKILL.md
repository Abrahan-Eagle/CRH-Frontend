---
name: crh-donations-ui
description: >
    UI de donaciones CRH: flujo diezmo/ofrenda, comprobante, historial.
    Trigger: Pantallas de donaciones, diezmos, ofrendas.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/donations/]
    auto_invoke:
        - "Trabajar con UI de donaciones"
    triggers: donaciones, diezmo, ofrenda, donations
    related-skills: [crh-flutter-arch, crh-donations]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Donations UI

## Pantallas

- **DonateScreen** — tipo, monto, método, upload comprobante
- **DonationHistoryScreen** — listado propio con estados
- **DonationReceiptScreen** — detalle / compartir recibo

## UX

- Montos sugeridos + campo libre
- Copy claro sobre métodos VE (pago móvil, transferencia)
- Preview imagen comprobante antes de enviar
- Confirmación sin exponer datos bancarios en logs

## Seguridad UI

- No cachear comprobantes en almacenamiento inseguro
- Validar monto > 0, tipo seleccionado
