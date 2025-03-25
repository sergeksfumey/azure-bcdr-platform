# Cloud-Native Disaster Recovery & Business Continuity Platform (Azure BCDR)

> Enterprise-Grade, Cloud-Native BCDR Architecture with Terraform, Azure Site Recovery, Backup, Automation, and Monitoring

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Azure](https://img.shields.io/badge/cloud-azure-blue)
![IaC](https://img.shields.io/badge/infrastructure-terraform-purple)
![Status](https://img.shields.io/badge/status-active-brightgreen)

---

## Overview

This project implements a **Cloud-Native Disaster Recovery and Business Continuity Platform** on **Microsoft Azure** using a fully automated, secure, and modular architecture. It leverages **Terraform**, **Azure Site Recovery**, **Azure Backup**, **Geo-Redundant Storage**, **Azure Automation**, and **Log Analytics** to ensure business continuity for mission-critical workloads.

This platform supports:
- Zero-touch VM replication & failover
- RTO/RPO monitoring & visualization
- Cross-region resilience with automated failback
- Compliance-grade observability & alerting

---

## Goals

- Automate the deployment of a secure, scalable BCDR foundation in Azure
- Replicate and protect workloads across availability zones and regions
- Provide recovery automation with Azure Runbooks
- Centralize observability with Azure Monitor & Power BI
- Enforce IaC-driven repeatable deployments

---

## Architecture

### Core Components

| Layer        | Service                        | Purpose                                 |
|--------------|--------------------------------|------------------------------------------|
| Compute      | Azure VMs                      | Primary & DR workloads                  |
| Storage      | Azure Storage (GRS)            | Backup/replication & metadata storage   |
| BCDR Control | Recovery Services Vault        | Backup & Site Recovery configuration    |
| Automation   | Azure Automation Runbooks      | Unplanned failover execution            |
| Monitoring   | Azure Monitor + Log Analytics  | Observability, alerting & dashboards    |

*(Include architecture diagram here: `/docs/bcdr-architecture.png`)*

---

## Getting Started

### Prerequisites

- Azure Subscription with two paired regions (e.g., `East US` & `Central US`)
- Azure CLI or Cloud Shell
- Terraform >= 1.5
- PowerShell (for Automation Runbook testing)
- Visual Studio Code with Azure and Terraform extensions

---

### Folder Structure

```bash
azure-bcdr-platform/
├── terraform/
│   ├── providers.tf
│   ├── modules/
│   │   ├── recovery_vault/
│   │   ├── site_recovery/
│   │   ├── azure_backup/
│   │   └── storage/
├── runbooks/
│   └── failover-runbook.ps1
├── pipelines/
│   └── azure-pipelines.yml
├── monitoring/
│   └── alert-rules.json
├── docs/
│   └── bcdr-architecture.png
└── README.md
