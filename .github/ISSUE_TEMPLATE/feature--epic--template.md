---
name: Feature (Epic) template
about: High level feature with sub-tasks across repositories
title: ''
labels: ''
assignees: ''
type: Feature

---

---
name: "🚀 Feature (Epic)"
description: Define a high-level feature that spans multiple sub-tasks or repositories.
title: "Feature: [Short, Descriptive Title]"
labels: ["type: feature", "status: backlog"]
assignees: []
---

## 🎯 User Story / Objective
**As a** [user/role],
**I want to** [action/capability],
**So that** [benefit/value].

---

## 📋 High-Level Acceptance Criteria
- [ ] Criterion 1 (e.g., "User can see real-time updates without refreshing")
- [ ] Criterion 2 (e.g., "Data adheres to FHIR profiling specifications")

---

## 🛠️ Cross-Repository Task List
*Track execution across the ohs-player stack by linking sub-tasks below using the `org/repo#issue` syntax.*

### Client UI / Frontend (`ohs-player-xxxxx-client`)
- [ ] #<!-- Link local repository task issue here -->

### Backend Services (`ohs-player-xxxxx-backend`)
- [ ] ohs-foundation/ohs-player-xxxxx-backend#<!-- Link backend task issue here -->

### Infrastructure & Deployment (`ohs-player-xxxxx-infrastructure`)
- [ ] ohs-foundation/ohs-player-xxxxx-infrastructure#<!-- Link infra task issue here -->

---

## 🎨 Design / UX Architecture Notes
*(Optional) Add links to Figma, architectural diagrams, or state-machine flows here.*
