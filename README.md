# OHS Player

The OHS Player is a cross-stack reference toolkit. Its objective is to provide an easy way to plug, play, and deploy the [OHS components](https://developers.google.com/open-health-stack/overview). It will also serve to showcase the _best of_ the OHS features and as a platform for knowledge sharing of best practice for common use cases.

## 🚀 Overview and Components

The OHS Player is conceptualized as a stack/reference tool kit. The core cross-stack components are:

  * **Client:** A configurable Kotlin Multi Platform (KMP)-based reference digital health starter application built for various platform targets e.g Android, iOS e.t.c
  * **Web portal:** A web-based management tool designed for healthcare organizations to manage workforce hierarchies. It is a configurable, extendible boilerplate with core features like user management and enforcing access controls.
  * **Pipeline:** Used to deploy FHIR Data Pipes.
  * **Proxy:** Used to set up Auth & IAM to gate the deployed FHIR Store.
  * **Documentation:** Guides target users on end-to-end setup and deployment for both the client and backend.

## ✨ Target Users

The OHS Player is aimed at **Developers**.

## 🎯 Key Features 
### Reference App
The OHS Player Reference multi-platform app key components and workstreams for this phase include:

  * **Data layer:** Implementing the data storage solution
  * **Authentication:** Supporting online and offline log-in workflows.
  * **Registers:** Configurable data registers that render collected data in tabular form.
  * **Profiles:** Configurable single-record profile data.
  * **Internationalization (i18N):** Multi-language support.
  * **Sync implementation:** Redesign and discussion are needed for how to sync data and support various community sync strategies.
  
### Deployment scripts
Pre-packaged images and scripts to easily spin up the demo reference platform. The deliverables include setup scripts, such as `ohs-play-compose.yml`, which spins up all the OHS backend components.

### Web admin portal
Boilerplate extendible _Admin Web-app_ that provides set of common core features like user management and enforcing access controls.

### Documentation
Documentation and tutorials sourced from the community addressing common implementer use cases and showcasing best practices. Step-by-step instructions of configuration and deployment of the various OHS components.

## 🔗 Further Information
  * OHS stack documentation: [OHS Stack](https://developers.google.com/open-health-stack/overview)
  
