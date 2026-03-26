# Example Component Diagram Notes

- ingress routes customer traffic to the web tier
- checkout service orchestrates pricing, payment, and order placement
- payment adapter isolates gateway-specific logic
- notification component handles confirmation workflows
- support lookup is exposed through an internal API boundary
