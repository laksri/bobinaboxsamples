# Acme Commerce Design Inputs

## Modernization goals

- move the application toward a container-friendly runtime model
- shorten release cycles
- improve reliability during traffic spikes

## Functional expectations

- preserve catalog, checkout, payment, and confirmation workflows
- support agent order lookup must remain available

## Design-level concerns

- runtime should be suitable for OpenShift
- configuration should not be packaged per environment
- observability should improve over the current state
