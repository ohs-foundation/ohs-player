# 🗺️ OHS Player Delivery Roadmap (alpha-01)

> **Mission:** Deliver a standard-based, interoperable toolkit to accelerate digital health application development utilizing the HL7 FHIR standard and Kotlin Multiplatform.

---

## 🚀 Horizon 1: Alpha Release ("The MVP Sandbox")
**Target Timeframe:** EDD June 2026

**Primary Focus:** Delivering a functional local sandbox featuring basic packaging, an MVP Web Admin portal, and an **expanded functional Client App**.

### 📱 Client App (`ohs-player-reference-client-app`)
*The client application serves as the core testbed for the Multiplatform SDK. In the Alpha release, it will demonstrate complete end-to-end functionality focussing on Engine, Data Capture, Sync and the config.*

**Core Library Dependencies:** __kotlin-fhir (beta), kotlin-fhir-engine (beta), kotlin-fhir-data-capture (alpha), kotlin-fhirpath (beta)__

| Capability | Feature Details |
| :--- | :--- |
| **Multiplatform SDK & Engine** | Deploy the initial version of the KMP SDK with the core kotlin-FHIR engine (kotlin-fhir v2.0.0-beta-2 is scheduled for release by end of May 2026) operational across platforms. |
| **UI Generation & Data Capture** | Implement data capture libraries to enable dynamic UI form rendering directly from FHIR `Questionnaire` resources. |
| **Extraction & Population** | Provide the engine with the ability to extract user inputs from the UI and map/populate them into standard FHIR resources. |
| **Sync Functionality** | Implement the baseline synchronization engine to pull and push resource bundles from the backend Gateway. |
| **Initial Config Layer** | Establish the config parsing engine, mapping app workflows and loading them from local asset roots. |

### ⚙️ Backend & Web Admin (`ohs-player-reference-backend`)
*Extendible “boilerplate” web-admin portal framework with “common” set of configurable core features. Showcases how to configure and use Info Gateway features (e.g. AuditEvents, Security Labels) and FHIR Data Pipes

* **Location Access Checker:**  Use FHIR Task, Location, and Security Label resources to implement and expose an API for checking user access permissions to specific locations.
* **Plugin Architecture for custom end-points:** Use a lightweight plugin system (e.g., based on Spring Boot Autoconfiguration or similar) to allow easy addition of custom endpoints without modifying core application code.
* **Proxy & Security:** Deploy the FHIR Gateway core to proxy requests and handle token validation.
* **MVP Admin Portal:** Launch the boilerplate web-admin interface as a minimum skin that can be adapted for specific implementations.
* **Basic Identity & Hierarchy:** Integrate Keycloak for IAM (auto-generating `Practitioner` resources) and enable basic `Location` hierarchy management.

### 📦 Infrastructure (`ohs-player-reference-infrastructure`)
* **Sandbox Scripts:** Unified Docker Compose bundles linking HAPI FHIR, Info Gateway, FHIR Data Pipes, sample dashboards, and the Admin app.

---

## ⚡ Horizon 2: Beta Release ("Interoperability & Workflows")
**Target Timeframe:** 3–4 Months  
**Primary Focus:** Remote configuration, advanced workflow rules, and administrative bulk operations.

### 📱 Client App (`ohs-player-reference-client-app`)
* **Advanced Sync & Filtering:** Allow users to pull highly filtered data based on location or care team assignments via gateway tags.
* **Remote Orchestration Prep:** Transitioning configuration ingestion from local assets to remote servers.

### ⚙️ Backend & Web Admin (`ohs-player-reference-backend`)
* **Bulk Management Engines:** Custom APIs to bulk import workforces, hierarchies, and `CareTeam` records via CSV/Excel.
* **Task Rule Engine (V1):** FHIR-native task rule authoring using `PlanDefinition` and `ActivityDefinition` to automate workflows.
* **Audit Trails:** Operationalize audit logs using FHIR `AuditEvent` resource processing.

### 📦 Infrastructure (`ohs-player-reference-infrastructure`)
* **Data Seeding:** Automated injection of synthetic clinical data and configuration blueprints into the sandbox.

---

## 🌍 Horizon 3: General Availability ("Production Blueprints")
**Target Timeframe:** 6+ Months  
**Primary Focus:** Scalable cloud architecture, fully remote apps, and complex analytical workflows.

### 📱 Client App (`ohs-player-reference-client-app`)
* **Fully Remote Orchestration:** App logic executes entirely from remote configuration profiles without requiring app store updates.
* **Full Platform Parity:** Stable, production-ready deployments across Android, iOS, and Web.

### ⚙️ Backend & Web Admin (`ohs-player-reference-backend`)
* **Advanced Task Execution:** Implement complex programmatic workflow logic using CQL/FHIRPath, with robust rule simulation.
* **Custom Data Science Views:** Embed analytics notebooks and ViewDefinition editors directly in the portal.

### 📦 Infrastructure (`ohs-player-reference-infrastructure`)
* **Cloud Templates:** Formalized deployment blueprints for scalable production on cloud platforms (e.g., AWS, GCP).
* **High-Volume ETL:** Robust pipelines streaming complex operational data to SQL data warehouses.
