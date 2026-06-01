---
name: crh-signup-flow-cro
description: >
    CRO del flujo registro/login CRH: email, teléfono opcional, fricción y abandono.
    Trigger: Auth, signup, primer acceso.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/auth/]
    auto_invoke:
        - "Trabajar con registro o login"
    triggers: signup, login, registro, auth, CRO
    related-skills: [crh-onboarding-cro, mobile-developer]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Signup Flow CRO

## Alcance

- Registro miembro (email/contraseña o OAuth si se implementa)
- Teléfono opcional para contacto pastoral
- Primera pantalla post-auth → onboarding

## Auditoría

| Paso | Revisar |
|------|---------|
| Registro | Errores claros, sin jerga técnica |
| Permisos | Solo cuando necesarios (push, cámara perfil) |
| Teléfono | Formato VE, opcional salvo política iglesia |
| Redirect | No loop auth / onboarding |

## Principios

- Un CTA principal por pantalla
- Mostrar valor (avisos/eventos) antes de pedir datos extensos
- Loading states en `AppConfig.apiUrl`

## Seguridad (AppSec)

- No loguear tokens Sanctum
- Mensajes genéricos en fallo auth

## Verificación

- Probar local y staging; release si cambia config Android/iOS
