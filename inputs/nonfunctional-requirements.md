# Non-Functional Requirements

## Performance

- checkout requests should complete within 2 seconds under normal load
- promotion traffic may spike to 4x baseline

## Availability

- target service availability is 99.9%

## Security

- customer-facing endpoints require TLS
- role-based access is required for support features

## Gaps intentionally left open

- no RTO or RPO is defined
- no vulnerability remediation SLA is defined
- no observability minimum standard is defined
- no scaling threshold policy is defined
