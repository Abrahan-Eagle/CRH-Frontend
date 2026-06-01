---
name: crh-flutter-arch
description: >
    Arquitectura Flutter CRH: estructura modular por features, Provider, navegación, AppConfig, ApiService.
    Trigger: Estructura del proyecto, providers, navegación, servicios HTTP.
license: UNLICENSED
metadata:
    author: CRH Team
    version: "1.0"
    scope: [lib/]
    auto_invoke:
        - "Trabajar con estructura o providers"
    triggers: flutter, provider, navegación, arquitectura, AppConfig, ApiService
    related-skills: [flutter-expert, crh-ui-design]
allowed-tools: [Read, Edit, Write, Glob, Grep]
---

# CRH Flutter Architecture

## Estructura prevista

```
lib/
├── config/          # AppConfig, Theme, UserProvider
├── shared/          # Servicios y widgets compartidos
├── auth/
├── members/
├── events/
├── announcements/
├── donations/
├── ministries/
├── devotionals/
└── streaming/
```

## Patrones

- **Provider** (ChangeNotifier) para estado
- **Services** para HTTP y lógica de negocio
- **Models** con `fromJson` / `toJson`
- **AppConfig.apiUrl** — nunca URLs hardcodeadas

## Entornos

| Entorno | API |
|---------|-----|
| local | IP :8000 |
| test | staging CRH |
| production | producción CRH |

## Convenciones

- Archivos: `snake_case.dart`
- Clases: `PascalCase`
- Un feature = carpeta con screens, providers, services, models
