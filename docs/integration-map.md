# Integration Map

## External systems

- payment gateway
- email notification service
- customer support lookup database

## Internal capabilities

- catalog browsing
- checkout orchestration
- order persistence
- notification triggering

## Design questions intentionally left open

- should payment be isolated as a separate service or kept behind a modular boundary first
- should support lookup remain direct or be mediated through an application API
- what is the preferred ingress and API gateway pattern
