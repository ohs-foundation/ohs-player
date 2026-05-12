# 🗺️ OHS Player Roadmap

> **Mission:** Deliver a standards-based, interoperable toolkit to accelerate digital health application development utilizing the HL7 FHIR standard and Kotlin Multiplatform.

**📋 Looking for the detailed task checklist?** See [PROJECT_CHECKLIST.md](./PROJECT_CHECKLIST.md)

---

## Overview

This roadmap tracks high-level **Feature Epics** across three delivery horizons. Each Epic is a GitHub Issue in this repository (`ohs-player`) that links to execution tasks in the code repositories.

- **Epics** live here in `ohs-player` (no code, just tracking)
- **Tasks** live in execution repos (`-client-app`, `-backend`, `-infrastructure`)
- **GitHub Project Board** provides timeline and kanban views

## Repository Structure

```
ohs-foundation/
├── ohs-player                          # This repo - Epic/Spec tracking (NO CODE)
├── ohs-player-reference-client-app     # KMP client application
├── ohs-player-reference-backend        # Web admin & gateway plugins
├── ohs-player-reference-infrastructure # Docker/deployment scripts
├── kotlin-fhir                         # Core KMP FHIR library
├── kotlin-fhir-engine                  # Core KMP FHIR engine
└── fhir-gateway                        # FHIR Info Gateway
```

---

## 🚀 Horizon 1: Alpha Release ("The MVP Sandbox")

**Target:** June 2026  
**Focus:** Functional local sandbox with MVP Web Admin portal and expanded functional Client App

### Client App Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **KMP SDK & Engine** - Deploy initial KMP SDK with core kotlin-FHIR engine | `kotlin-fhir`, `kotlin-fhir-engine` |
| [#TBD](.) | **UI Generation & Data Capture** - Dynamic form rendering from FHIR Questionnaire | `ohs-player-reference-client-app` |
| [#TBD](.) | **Extraction & Population** - Extract inputs and map to FHIR resources | `ohs-player-reference-client-app` |
| [#TBD](.) | **Sync Functionality** - Baseline sync engine for pull/push with gateway | `ohs-player-reference-client-app` |
| [#TBD](.) | **Config Layer** - Config parsing engine, workflow mapping from local assets | `ohs-player-reference-client-app` |

### Backend & Web Admin Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **Core Library Foundation** - CorePlatformProvider, OIDC auth, RBAC, FHIR client | `ohs-player-reference-backend` |
| [#TBD](.) | **Location Access Checker** - FHIR Task, Location, Security Label based access | `ohs-player-reference-backend` |
| [#TBD](.) | **Plugin Architecture** - Custom endpoints without modifying core code | `ohs-player-reference-backend` |
| [#TBD](.) | **MVP Admin Portal** - User, Location, CareTeam management UI | `ohs-player-reference-backend` |
| [#TBD](.) | **Identity & Hierarchy** - Keycloak IAM + Location hierarchy management | `ohs-player-reference-backend` |

### Infrastructure Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **Sandbox Scripts** - Docker Compose bundle (HAPI, Gateway, Data Pipes, Admin) | `ohs-player-reference-infrastructure` |

### Analytics Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **FHIR Data Pipes Integration** - Analytics pipeline with sample dashboards | `ohs-player-reference-infrastructure` |

---

## ⚡ Horizon 2: Beta Release ("Interoperability & Workflows")

**Target:** 3-4 months post-Alpha  
**Focus:** Remote configuration, advanced workflows, bulk operations

### Client App Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **Advanced Sync & Filtering** - Location/CareTeam filtered data via gateway tags | `ohs-player-reference-client-app` |
| [#TBD](.) | **Remote Orchestration Prep** - Config ingestion from remote servers | `ohs-player-reference-client-app` |

### Backend & Web Admin Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **Bulk Management Engines** - CSV/Excel import for workforce, hierarchies, CareTeams | `ohs-player-reference-backend` |
| [#TBD](.) | **Task Rule Engine V1** - PlanDefinition/ActivityDefinition workflow automation | `ohs-player-reference-backend` |
| [#TBD](.) | **Audit Trails** - FHIR AuditEvent processing and visualization | `ohs-player-reference-backend` |

### Infrastructure Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **Data Seeding** - Synthetic clinical data injection into sandbox | `ohs-player-reference-infrastructure` |

---

## 🌍 Horizon 3: General Availability ("Production Blueprints")

**Target:** 6+ months post-Beta  
**Focus:** Scalable cloud architecture, fully remote apps, complex analytics

### Client App Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **Fully Remote Orchestration** - App logic from remote config (no app store updates) | `ohs-player-reference-client-app` |
| [#TBD](.) | **Full Platform Parity** - Stable Android, iOS, Web deployments | `ohs-player-reference-client-app` |

### Backend & Web Admin Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **Advanced Task Execution** - CQL/FHIRPath workflow logic with simulation | `ohs-player-reference-backend` |
| [#TBD](.) | **Custom Data Science Views** - Analytics notebooks, ViewDefinition editors | `ohs-player-reference-backend` |

### Infrastructure Epics

| Epic | Description | Repo |
|------|-------------|------|
| [#TBD](.) | **Cloud Templates** - AWS/GCP deployment blueprints | `ohs-player-reference-infrastructure` |
| [#TBD](.) | **High-Volume ETL** - Pipelines to SQL data warehouses | `ohs-player-reference-infrastructure` |

---

## 📊 Milestones

| Milestone | Target | Status |
|-----------|--------|--------|
| `v1.0.0-alpha` | June 2026 | 🔄 In Progress |
| `v1.1.0-beta` | Q3 2026 | ⬜ Planned |
| `v1.2.0-ga` | Q4 2026+ | ⬜ Planned |

---

## 🏷️ Labels

### Issue Types
- `type: feature` - High-level Feature Epic (in ohs-player)
- `type: task` - Execution task (in code repos)
- `type: dependency` - Upstream blocker tracking
- `type: bug` - Bug report
- `type: docs` - Documentation

### Status
- `status: backlog` - Not yet prioritized
- `status: ready-for-dev` - Ready for implementation
- `status: in-progress` - Actively being worked on
- `status: blocked` - Waiting on dependency
- `status: review` - In code review
- `status: done` - Completed

### Component (for core libraries)
- `component: engine-core` - FHIR Engine core
- `component: data-capture` - SDC/Questionnaire
- `component: sync` - Sync functionality
- `component: kmp` - Kotlin Multiplatform specific
- `component: web-portal` - Web Admin Portal
- `component: gateway` - FHIR Gateway
- `component: infrastructure` - Docker/Deployment
- `component: analytics` - FHIR Data Pipes/Dashboards

### Horizon
- `horizon: alpha` - v1.0.0-alpha scope
- `horizon: beta` - v1.1.0-beta scope
- `horizon: ga` - v1.2.0-ga scope

---

## 📝 Issue Templates

### Feature Epic (ohs-player repo only)

```markdown
---
name: "🚀 Feature (Epic)"
labels: ["type: feature", "status: backlog"]
---

## 🎯 Objective
[One sentence describing the user/developer value]

## 📋 Acceptance Criteria
- [ ] Criterion 1
- [ ] Criterion 2

## 🛠️ Cross-Repository Tasks

### Client (`ohs-player-reference-client-app`)
- [ ] ohs-foundation/ohs-player-reference-client-app#

### Backend (`ohs-player-reference-backend`)
- [ ] ohs-foundation/ohs-player-reference-backend#

### Infrastructure (`ohs-player-reference-infrastructure`)
- [ ] ohs-foundation/ohs-player-reference-infrastructure#

## 📎 References
- Architecture doc: [link]
- Design: [link]
```

### Execution Task (code repos)

```markdown
---
name: "🛠️ Task"
labels: ["type: task", "status: ready-for-dev"]
---

## 📍 Context
**Parent Epic:** ohs-foundation/ohs-player#
**Component:** [e.g., Auth, Sync, UI]

## 💻 Requirements
1. [ ] Implement...
2. [ ] Test...
3. [ ] Document...

## ✅ Definition of Done
- [ ] Code compiles without warnings
- [ ] Unit tests pass
- [ ] No regression to existing features
```

### Dependency Tracker (ohs-player repo)

```markdown
---
name: "🔗 Dependency"
labels: ["type: dependency", "status: blocked"]
---

## 📍 Upstream Context
**External Issue:** ohs-foundation/kotlin-fhir#
**Expected Delivery:** [date]

## 🛑 Blocked Epics
- [ ] ohs-foundation/ohs-player#
```

---

## 🔗 Key Links

- **Discord:** [OHS Community](https://discord.gg/ohs)
- **Documentation:** [ohs.community](https://ohs.community)
- **Core Libraries:**
  - [kotlin-fhir](https://github.com/ohs-foundation/kotlin-fhir)
  - [kotlin-fhir-engine](https://github.com/ohs-foundation/kotlin-fhir-engine)
  - [fhir-gateway](https://github.com/ohs-foundation/fhir-gateway)
  - [fhir-data-pipes](https://github.com/ohs-foundation/fhir-data-pipes)

---

*Last Updated: May 2026*