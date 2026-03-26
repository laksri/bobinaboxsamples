# Current State Summary

## Estate overview

Acme Commerce runs as a Java 8 application on a traditional application server footprint.

## Deployment model

- manual deployment coordination
- shared lower environments
- environment-specific properties packaged with the deployment

## Integrations

- payment gateway
- email service
- customer support lookup database

## Known pain points

- release coordination is slow
- promotion traffic produces intermittent timeouts
- runtime metrics are incomplete
- ownership of cross-system integrations is unclear
