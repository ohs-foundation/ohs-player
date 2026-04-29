# OHS Player Roadmap and Project Checklist

> **Project Goal:** Enable easier adoption of Open Health Stack (OHS) by building a KMP-based OHS Player reference toolkit with cross-platform client apps, FHIR Web Administration Portal, and easy-to-deploy backend stack.

## Status Legend

| Status | Description |
|--------|-------------|
| ⬜ Pending | Not yet started |
| 🔄 Ongoing | Work in progress |
| ✅ Done | Completed |
| 🚫 Blocked | Blocked by dependency or issue |
| ⏳ Deferred | Postponed to a future phase or release |

---

## Workstream 1: KMP SDK Migration (Foundation)

**Timeline:** Q1-Q2 2026  
**Responsible:** Ona, Intellisoft, NawiTech, OHS Community

### 1.1 Structured Data Capture (SDC) - KMP Migration

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| 🔄 Ongoing | Widget migration | Migrate SDC widgets to KMP | Q1 | | | |
| 🔄 Ongoing | Catalog migration | Migrate catalog module to KMP | Q1 | | | |
| ⬜ Pending | Alpha release | SDC KMP Alpha version | Mid-Q1 | Widget migration, Catalog migration | | |
| ⬜ Pending | Final release | SDC KMP completion | End Q1 | Alpha release | | |
| 🚫 Blocked | GitHub repo migration | Holding off release due to OHS foundation codebase migration | Q1 | OHS Foundation GitHub org setup | | |
| 🚫 Blocked | Maven migration | Maven registry transfer to OHS Foundation | Q1 | Linux Foundation coordination | | |

### 1.2 FHIR Engine - KMP Migration

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| 🔄 Ongoing | Migration assessment | Assess what needs migration to KMP | Feb | | | |
| 🔄 Ongoing | Migration plan | Finalize migration plan | Feb | Migration assessment | | |
| ⬜ Pending | New dependencies | Replace Android/Java only libraries with KMP alternatives | Q1-Q2 | Migration plan | | |
| ⬜ Pending | KMP lib setup | Set up new KMP library structure | Q1 | | | |
| ⬜ Pending | Sync implementation | CRUD and sync operations in KMP | Q2 | KMP lib setup | | |
| ⬜ Pending | Alpha release | FHIR Engine KMP Alpha | End Q2 | Sync implementation | | |

### 1.3 Data Layer Architecture

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Room vs SQLDelight decision | Evaluate persistence strategies (WASM support considerations) | Q1 | | | WASM not supported by Room currently |
| ⬜ Pending | Document decision | Document decision and implementation approach | Q1 | Room vs SQLDelight decision | | |
| ⬜ Pending | Implementation | Implement chosen persistence strategy | Q1-Q2 | Document decision | | |

### 1.4 Workflow Engine

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | StructureMap support | Implement StructureMap-based $apply operations | Q1-Q2 | | | |
| ⬜ Pending | FML dependencies | Resolve FML and transform API dependencies | Q1-Q2 | | | |
| ⏳ Deferred | CQL support | CQL-based $apply operations | H1 2026 | Bryn CQL work | | Dependency on Bryn for CQL |
| ⬜ Pending | SMART Guidelines | SDK that can execute SMART Guidelines (WHO approach) | Q2 | StructureMap support | | |

### 1.5 Kotlin FHIRPath

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ✅ Done | Beta release | Kotlin FHIRPath library v1.0.0-beta01 | Completed | | | |
| ⬜ Pending | FHIRPath labs | Plan to add to FHIRPath labs | Q1 | | | Discussing with Brian Postlethwaite |

### 1.6 Future Components

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Catalog Module | KMP-compatible Catalog module | Q2-Q3 | | | |
| ⏳ Deferred | Reporting module | Reporting module V2 Alpha | V2 | | | Future phase |
| ⏳ Deferred | KM Library | Knowledge Management Library V2/V3 | V2/V3 | | | Future phase |

---

## Workstream 2: OHS Player Reference App (KMP Client)

**Timeline:** Q1-Q3 2026  
**Responsible:** Ona, Intellisoft, NawiTech, OHS Community

### 2.1 OHS Player Library Core

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Repository setup | Create ohs-reference-app repository with library and app modules | Q1 | GitHub org migration | | |
| ⬜ Pending | Library structure | Set up ohs-player library module structure | Q1 | Repository setup | | |
| ⬜ Pending | kotlin-fhir integration | Integrate kotlin-fhir library | Q1 | Library structure | | |
| ⬜ Pending | kotlin-fhirpath integration | Integrate kotlin-fhirpath library | Q1 | Library structure | | |

### 2.2 Data Transformer Layer

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Flattening engine | FHIRPath-based flattening engine for FHIR to Map<String, Any> | Q1-Q2 | kotlin-fhirpath integration | | |
| ⬜ Pending | Observable data model | Create observable flat data structure for UI consumption | Q1-Q2 | Flattening engine | | |
| ⬜ Pending | Field expressions | Associate fields with FHIRPath expressions | Q1-Q2 | Flattening engine | | |
| ⬜ Pending | Performance optimization | Optimize data transformation performance | Q2-Q3 | Observable data model | | |

### 2.3 Workflow Manager

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | $apply operation | Implement $apply operation logic for PlanDefinition | Q2 | FHIR Engine KMP | | |
| ⬜ Pending | Task state machine | Build Task state machine (ready -> in-progress -> completed) | Q2 | $apply operation | | |
| ⬜ Pending | WorkflowEngine service | Implement WorkflowEngine service | Q2 | Task state machine | | |
| ⬜ Pending | CarePlan generation | Generate personalized CarePlans from PlanDefinitions | Q2-Q3 | WorkflowEngine service | | |
| ⬜ Pending | Task lifecycle | Task lifecycle management with owners, due dates | Q2-Q3 | Task state machine | | |
| ⏳ Deferred | Request resources | Support ServiceRequest, MedicationRequest, ImmunizationRecommendation | Q3+ | CarePlan generation | | Not MVP |

### 2.4 View Rendering (UI Layer)

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | ViewFactoryRegistry | Develop ViewFactoryRegistry/ViewFactoryRepository | Q1-Q2 | | | |
| ⬜ Pending | Default view factories | Create default view factories for common FHIR data types | Q1-Q2 | ViewFactoryRegistry | | |
| ⬜ Pending | @Composable functions | Top-level composable consuming flattened data | Q1-Q2 | Data Transformer | | |
| ⬜ Pending | ViewType mapping | Map ViewTypes to factory functions | Q2 | ViewFactoryRegistry | | |
| ⬜ Pending | Custom UI support | Enable custom UIs for specific resource types | Q2 | ViewType mapping | | |
| ⬜ Pending | Widget library | Documented configurable widget library | Q2 | Default view factories | | |
| ⬜ Pending | Design specifications | Widgets conforming to agreed design specs | Q2 | Widget library | | |

### 2.5 Resource Extraction

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | QuestionnaireResponse extraction | Extract resources from QuestionnaireResponses | Q2 | SDC KMP | | |
| ⬜ Pending | FHIRPathMappingLanguage | Implement based on Beda FHIRPathMappingLanguage | Q2 | kotlin-fhirpath | | |
| ⬜ Pending | FHIR Engine integration | Make accessible via FHIR engine library | Q2 | FHIR Engine KMP | | |

### 2.6 Authentication

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | OAuth 2 with PKCE | Online authentication flow | Q1-Q2 | | | |
| ⬜ Pending | PIN-based offline login | Offline authentication workflow | Q1-Q2 | | | |
| ⬜ Pending | Keycloak RBAC | Role-based access control via Keycloak | Q1-Q2 | Backend FHIR Gateway | | |

### 2.7 Core Features

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Registers | Configurable data registers for tabular views | Q1-Q2 | View Rendering | | |
| ⬜ Pending | Profiles | Single record profile data views | Q1-Q2 | View Rendering | | |
| ⬜ Pending | i18n framework | Multi-language support framework | Q1-Q2 | | | |
| ⬜ Pending | Sync redesign | Flexible sync architecture for diverse scenarios | Q1-Q2 | FHIR Engine KMP | | |
| ⬜ Pending | Config Engine | DSL-based configuration format | Q1 | | | |

### 2.8 Reference App

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | GitHub template repo | Set up as GitHub template repository | Q2 | Repository setup | | |
| ⬜ Pending | V1 Alpha | OHS Player Reference App V1 Alpha | End Q3 | All core features | | |
| ⬜ Pending | Performance metrics | Document bottlenecks and resolution status | Q1-Q4 | | | |

---

## Workstream 3: FHIR Web Administration Portal

**Timeline:** Q2-Q3 2026  
**Responsible:** NawiTech

### 3.1 Core Library (ohs-player-web-core)

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Repository setup | Create mono repo with packages/ohs-player-web-core | Q2 | | | |
| ⬜ Pending | Vite build setup | Configure Vite in library mode (ESM + CJS) | Q2 | Repository setup | | |
| ⬜ Pending | TypeScript config | Set up TypeScript with declaration files | Q2 | Repository setup | | |
| ⬜ Pending | CI/CD pipeline | GitHub Actions for npm publishing | Q2 | Vite build setup | | |

### 3.2 Configuration Provider

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | CorePlatformProvider | Single React context provider for all config | Q2 | Repository setup | | |
| ⬜ Pending | fhirBaseUrl config | FHIR server/gateway URL configuration | Q2 | CorePlatformProvider | | |
| ⬜ Pending | fhirVersion config | FHIR version configuration (default R4) | Q2 | CorePlatformProvider | | |
| ⬜ Pending | customEndpoints config | Custom endpoint alias mapping | Q2 | CorePlatformProvider | | |
| ⬜ Pending | onError handler | Global error handler callback | Q2 | CorePlatformProvider | | |

### 3.3 Authentication & Authorization

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | OIDC discovery | Fetch and cache OIDC discovery document | Q2 | | | |
| ⬜ Pending | AuthConfig | Issuer and clientId configuration | Q2 | OIDC discovery | | |
| ⬜ Pending | PKCE flow | Authorization Code Flow with PKCE | Q2 | AuthConfig | | |
| ⬜ Pending | Token storage | Configurable token store (sessionStorage/memory/custom) | Q2 | PKCE flow | | |
| ⬜ Pending | useAuth hook | Auth state access hook | Q2 | Token storage | | |
| ⬜ Pending | Token refresh | Silent token refresh with failure callback | Q2 | useAuth hook | | |

### 3.4 RBAC (Role-Based Access Control)

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | RbacConfig | Role claim path and permission map config | Q2 | Auth module | | |
| ⬜ Pending | Role extraction | Extract roles from OIDC token claims | Q2 | RbacConfig | | |
| ⬜ Pending | Permission evaluation | Permission-based access checks (not role-based) | Q2 | Role extraction | | |
| ⬜ Pending | usePermission hook | Imperative permission checking hook | Q2 | Permission evaluation | | |
| ⬜ Pending | useRoles hook | Raw role list access hook | Q2 | Role extraction | | |
| ⬜ Pending | PermissionGuard | Component wrapper for permission-based rendering | Q2 | usePermission hook | | |
| ⬜ Pending | RoleGuard | Component wrapper for role-based rendering | Q2 | useRoles hook | | |
| ⬜ Pending | Unauthorized behaviors | Implement hide/disable/redirect behaviors | Q2 | PermissionGuard | | |
| ⏳ Deferred | RbacAdapter interface | Custom RBAC resolution for complex scenarios | Q2-Q3 | | | For advanced use cases |

### 3.5 FHIR Client

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Unified client | FHIR version-aware client with auto auth token | Q2 | Auth module | | |
| ⬜ Pending | client.read() | Standard FHIR read operations | Q2 | Unified client | | |
| ⬜ Pending | client.search() | Standard FHIR search operations | Q2 | Unified client | | |
| ⬜ Pending | client.create() | Standard FHIR create operations | Q2 | Unified client | | |
| ⬜ Pending | client.customGet() | Custom endpoint GET requests | Q2 | Unified client | | |
| ⬜ Pending | Pagination | Auto-pagination support | Q2 | client.search() | | |
| ⬜ Pending | Data hooks | useCreateResource(), useCustomEndpoint() hooks | Q2 | Unified client | | |
| ⬜ Pending | useFhirCapabilities | Capability statement hook | Q2 | Unified client | | |

### 3.6 Theming

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | ThemeConfig | Color, typography, spacing, borderRadius tokens | Q2 | | | |
| ⬜ Pending | Default theme | Sensible default theme values | Q2 | ThemeConfig | | |
| ⬜ Pending | Theme overrides | Host app theme customization support | Q2 | Default theme | | |
| ⬜ Pending | Component overrides | Per-component style overrides | Q2 | Theme overrides | | |

### 3.7 UI Components

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Radix UI integration | Adopt Radix UI component library | Q2 | | | |
| ⬜ Pending | Headless components | Headless component primitives | Q2 | Radix UI integration | | |
| ⬜ Pending | Styled primitives | Small set of theme-token styled components | Q2 | ThemeConfig | | |

### 3.8 Feature Flags

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | FlagsConfig | Static flag record configuration | Q2 | | | |
| ⬜ Pending | useFlag hook | Flag checking hook | Q2 | FlagsConfig | | |
| ⬜ Pending | FeatureGuard | Component wrapper for flag-based rendering | Q2 | useFlag hook | | |
| ⬜ Pending | Guard ordering | Feature flag -> Auth -> RBAC evaluation order | Q2 | FeatureGuard, PermissionGuard | | |

### 3.9 Internationalization (i18n)

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | I18nConfig | Locale, messages, dateFormat, numberFormat config | Q2 | | | |
| ⬜ Pending | Default catalog | English message catalog (src/i18n/locales/en.ts) | Q2 | I18nConfig | | |
| ⬜ Pending | Typed catalogs | TypeScript typed message keys | Q2 | Default catalog | | |
| ⬜ Pending | Interpolation | {{key}} token interpolation support | Q2 | Default catalog | | |
| ⬜ Pending | useTranslation hook | Translation access hook | Q2 | Typed catalogs | | |
| ⬜ Pending | Intl API | Date/time/number formatting via browser Intl API | Q2 | | | |
| ⏳ Deferred | RTL support | Right-to-left layout support via dir attribute | Q2-Q3 | | | For Arabic, Hebrew locales |

### 3.10 Reference Application (ohs-player-web)

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | App scaffold | Create apps/ohs-player-web structure | Q2 | Core library | | |
| ⬜ Pending | Environment config | VITE_FHIR_BASE_URL, VITE_OIDC_ISSUER, VITE_CLIENT_ID | Q2 | App scaffold | | |
| ⬜ Pending | Feature modules | src/features directory structure | Q2 | App scaffold | | |

### 3.11 Portal Features

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | User management | Configurable user management UI | Q2-Q3 | Core library, Backend endpoints | | |
| ⬜ Pending | Access controls | Access control configuration UI | Q2-Q3 | RBAC module | | |
| ⬜ Pending | Location hierarchy | Location hierarchy management (tree UI, drag-drop) | Q2-Q3 | Location hierarchy endpoint | | |
| ⬜ Pending | Bulk user import | Bulk practitioner/supervisor creation | Q2-Q3 | Bulk user management endpoint | | |
| ⬜ Pending | Bulk location import | Bulk location seeding | Q2-Q3 | Bulk location endpoint | | |
| ⬜ Pending | CareTeam management | CareTeam configuration UI | Q2-Q3 | Bulk CareTeam endpoint | | |
| ⬜ Pending | Organization management | Organization hierarchy management | Q2-Q3 | Bulk organization endpoint | | |

---

## Workstream 4: Backend & Infrastructure

**Timeline:** Q1-Q2 2026  
**Responsible:** NawiTech, Intellisoft

### 4.1 FHIR Gateway Core

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Repository setup | Create ohs-player-reference-backend repository | Q1 | | | |
| ⬜ Pending | Project structure | Set up access checker plugins and endpoints packages | Q1 | Repository setup | | |
| ⬜ Pending | Spring Boot config | Configure component scanning for custom plugins | Q1 | Project structure | | |
| ⬜ Pending | Deployment scripts | Loader path deployment configuration | Q1 | Project structure | | |

### 4.2 Custom Access Checker Plugins

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| 🔄 Ongoing | PoC implementation | Proof of concept access checker | Q1 | | | ohs-player-backend branch |
| ⬜ Pending | Hierarchical access | Custom permissions for District->Facility->Village->Household | Q1-Q2 | PoC implementation | | |
| ⬜ Pending | Keycloak integration | Authentication and role-based access via Keycloak | Q1-Q2 | PoC implementation | | |
| ⬜ Pending | Security Labels | Enhanced access checker for sync with security labels | Q2 | Hierarchical access | | |

### 4.3 Custom Endpoints

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Location hierarchy | /custom/location-hierarchy endpoint | Q1-Q2 | Project structure | | Compute heavy, needs optimization |
| ⬜ Pending | Practitioner details | /custom/practitioner-details endpoint | Q1-Q2 | Project structure | | |
| ⬜ Pending | Bulk user management | Bulk user creation endpoint (FHIR + IAM) | Q2 | Keycloak integration | | |
| ⬜ Pending | Bulk location management | Bulk location seeding endpoint | Q2 | Location hierarchy | | |
| ⬜ Pending | Bulk organization management | Bulk organization creation endpoint | Q2 | Project structure | | |
| ⬜ Pending | Bulk CareTeam management | Bulk CareTeam creation endpoint | Q2 | Project structure | | |

### 4.4 FHIR Server Integration

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | HAPI FHIR support | Integration with HAPI FHIR backend | Q2 | FHIR Gateway Core | | |
| ⬜ Pending | Google Health API | Integration with Google Health API backend | Q2 | FHIR Gateway Core | | |
| ⬜ Pending | Backend switching | Configurable backend selection | Q2 | HAPI, Google Health API | | |

### 4.5 Audit & Logging

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ✅ Done | AuditEvents logging | AuditEvents logging to FHIR server | Completed | | | |

---

## Workstream 5: Analytics

**Timeline:** Q2-Q3 2026  
**Responsible:** NawiTech, Intellisoft

### 5.1 FHIR Data Pipes

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Data pipes setup | Deploy FHIR Data Pipes for analytics | Q2 | FHIR Server | | |
| ⬜ Pending | Basic dashboards | Out-of-the-box dashboards for select use-cases | Q2 | Data pipes setup | | |
| ⬜ Pending | Superset/Metabase | Dashboard platform integration | Q2-Q3 | Data pipes setup | | |

### 5.2 Dashboard SSO

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | SSO integration | Single Sign-On for dashboard platforms | Q3 | Keycloak integration | | |
| ⬜ Pending | Unified auth | Unified authentication across all components | Q3 | SSO integration | | |

---

## Workstream 6: Packaging & Deployment

**Timeline:** Q2-Q4 2026  
**Responsible:** NawiTech, Ona, Intellisoft

### 6.1 Docker Deployment

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | ohs-play-compose.yml | Single command Docker Compose deployment | Q4 | All components | | |
| ⬜ Pending | FHIR Gateway container | Containerized FHIR Gateway | Q2-Q3 | Backend work | | |
| ⬜ Pending | FHIR Server container | Containerized HAPI FHIR | Q2-Q3 | FHIR Server integration | | |
| ⬜ Pending | Keycloak container | Containerized Keycloak IAM | Q2-Q3 | Keycloak integration | | |
| ⬜ Pending | Web Portal container | Containerized web portal | Q3 | Web Portal MVP | | |
| ⬜ Pending | Analytics container | Containerized FHIR Data Pipes + Dashboards | Q3 | Analytics work | | |

### 6.2 Security

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Vulnerability scanning | Automated vulnerability scanning | Q1 | | | |
| ⬜ Pending | Source code analysis | Static code analysis tools | Q1 | | | |
| ⬜ Pending | Security documentation | Security best practices documentation | Q2 | | | |

### 6.3 Templates & Onboarding

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | Config templates | Configuration templates for select use-cases | Q2-Q4 | | | |
| ⬜ Pending | Quick start guide | Getting started documentation | Q2 | | | |
| ⬜ Pending | Use-case guides | Guides for specific deployment scenarios | Q3-Q4 | | | |

### 6.4 Documentation

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | GitHub Pages setup | Documentation site on GitHub Pages | Q2 | | | |
| ⬜ Pending | Architecture docs | Architecture documentation | Q2 | | | |
| ⬜ Pending | API documentation | API reference documentation | Q2-Q3 | | | |
| ⬜ Pending | Configuration guide | Step-by-step configuration instructions | Q2-Q3 | | | |
| ⬜ Pending | Deployment guide | Deployment instructions | Q3 | | | |

### 6.5 Tutorials & Codelabs

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | End-to-end tutorials | Complete workflow tutorials | Q4 | All components | | |
| ⬜ Pending | Interactive codelabs | Hands-on coding exercises | Q4 | Documentation | | |
| ⬜ Pending | Video demos | Demo video content | Q4 | | | |

### 6.6 Package Release

| Status | Task | Description | Target | Dependencies | GitHub Issue | Notes |
|--------|------|-------------|--------|--------------|--------------|-------|
| ⬜ Pending | APK packaging | Packaged APKs for select use-cases | Q4 | Reference App V1 Alpha | | |
| ⬜ Pending | npm packages | Published npm packages for web components | Q3-Q4 | Web Portal | | |
| ⬜ Pending | Maven artifacts | Published Maven artifacts for KMP libraries | Q2-Q4 | Maven migration | | |

---

## Milestone Summary

| Milestone | Target | Status |
|-----------|--------|--------|
| SDC KMP Alpha | Mid Q1 2026 | 🔄 Ongoing |
| SDC KMP Final | End Q1 2026 | ⬜ Pending |
| FHIR Engine KMP Alpha | End Q2 2026 | ⬜ Pending |
| OHS Player Reference App V1 Alpha | End Q3 2026 | ⬜ Pending |
| Web Portal MVP | Q3 2026 | ⬜ Pending |
| Docker Compose Deployment | Q4 2026 | ⬜ Pending |
| Full Documentation & Tutorials | Q4 2026 | ⬜ Pending |

---

## How to Update This Checklist

1. **Change status emoji** as work progresses:
   - ⬜ Pending - Not started
   - 🔄 Ongoing - In progress  
   - ✅ Done - Completed
   - 🚫 Blocked - Blocked by dependency
   - ⏳ Deferred - Postponed to future phase

2. **Add GitHub Issue links** when tickets are created (use format `[#123](url)`)

3. **Update Dependencies column** to track what each task is waiting on

4. **Add Notes** for context, blockers, decisions, or relevant details

5. **Update Target dates** if timelines shift

6. **Add new tasks** as they are identified during implementation

7. **Update Milestone Summary** to reflect overall progress

---

*Last Updated: [DATE]*  
*Maintained by: OHS Player Development Team*
