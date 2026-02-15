# SaaS Retention & Churn — Technical Tear-Down

## 1) What we’re building
A measurable product improvement backed by instrumentation, data modeling, and experimentation.

## 2) Analytics instrumentation (event taxonomy)
See: `CSV/tracking_plan_events.csv`
- One event per user intent
- Stable names + versioned properties
- PII minimized; IDs hashed where possible

## 3) Data model (warehouse)
Core tables:
- `analytics.events` (raw)
- `analytics.events_daily` (rolled up)
- `saas.fact_*` (domain facts)
- `saas.dim_user`, `saas.dim_product` (dimensions)

Keys:
- `user_id`, `session_id`, `event_ts` (event grain)
- `order_id` / `subscription_id` as applicable

## 4) KPI definitions (single source of truth)
- KPI definitions in PRD + SQL pack
- Dashboards read from curated marts, not raw tables

## 5) Experimentation approach
- Primary KPI: case-study specific
- Guardrails: error rate, refunds/returns, latency, support tickets
- SRM checks + sample-size gates

## 6) System view (high-level)
Client → Event collector → Stream/Queue → Warehouse → Metrics layer → Dashboard

## 7) Risks & mitigations
- Tracking drift → schema tests + automated QA
- Metric gaming → guardrails + audits
- Seasonality → holdouts + longer windows
