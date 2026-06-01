# 🚀 Azure Resource Inventory Automation

<p align="center">

![Azure](https://img.shields.io/badge/Azure-Cloud-blue)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-black)
![PowerShell](https://img.shields.io/badge/PowerShell-Automation-blue)
![ARI](https://img.shields.io/badge/Azure%20Resource%20Inventory-ARI-success)
![License](https://img.shields.io/badge/License-MIT-green)
<img width="1536" height="1024" alt="Inventory-Automation-Architecture" src="https://github.com/user-attachments/assets/4524cc0d-891a-444c-93cb-ca76da02154d" />


</p>

---

## 📌 Overview

Azure Resource Inventory Automation is a cloud-native reporting solution that automatically generates Azure Resource Inventory (ARI) reports and distributes them to stakeholders through Microsoft 365 email.

The solution leverages GitHub Actions, Azure Service Principals, PowerShell, and Azure Resource Inventory (ARI) to provide scheduled infrastructure reporting with zero manual effort.

---

## 🎯 Business Problem

Cloud teams often spend hours manually:

* Collecting Azure inventory
* Exporting resource information
* Generating reports
* Emailing stakeholders

This project automates the entire process.

---

## 🏗 Solution Architecture

```text
GitHub Actions Scheduler
          │
          ▼
GitHub Hosted Runner
          │
          ▼
PowerShell Automation
          │
          ▼
Azure Service Principal
          │
          ▼
Azure Resource Inventory (ARI)
          │
          ▼
Excel Report Generation
          │
          ▼
GitHub Artifact Upload
          │
          ▼
Microsoft 365 SMTP
          │
          ▼
Operations Team
```

---

## ✨ Features

### 🔹 Azure Automation

* Automated Azure Inventory Collection
* Multi-Subscription Support
* Azure Service Principal Authentication
* Governance Reporting

### 🔹 Reporting

* Excel Report Generation
* Resource Inventory Dashboard
* Subscription Overview
* Azure Advisor Insights

### 🔹 DevOps

* GitHub Actions Integration
* Scheduled Execution
* Manual Execution Support
* Artifact Retention

### 🔹 Security

* GitHub Secrets
* No Hardcoded Credentials
* RBAC-Based Access
* Least Privilege Model

### 🔹 Notifications

* Outlook SMTP Integration
* Multiple TO Recipients
* Multiple CC Recipients
* Automated Email Delivery

---

## 📂 Repository Structure

```bash
AzureInventoryAutomation
│
├── .github
│   └── workflows
│       └── azure_inventory.yml
│
├── scripts
│   └── RunARI.ps1
│
├── ARI_GitHub_Actions_Implementation_Guide.docx
│
└── README.md
```

---

## ⚙️ Workflow Execution

### Step 1

GitHub Actions starts on schedule.

### Step 2

Azure authentication using Service Principal.

### Step 3

Azure Resource Inventory module executes.

### Step 4

Excel inventory report generated.

### Step 5

Report uploaded as GitHub Artifact.

### Step 6

Email automatically delivered.

---

## 📅 Schedule

### Production Schedule

| Schedule     | Time         |
| ------------ | ------------ |
| 2nd Saturday | 11:00 AM IST |
| 4th Saturday | 11:00 AM IST |

```yaml
- cron: '30 5 8-14 * 6'
- cron: '30 5 22-28 * 6'
```

---

## 🔐 Security

Secrets are stored securely within GitHub Actions.

### Configured Secrets

```text
AZURE_CLIENT_ID
AZURE_CLIENT_SECRET
AZURE_TENANT_ID
SMTP_USERNAME
SMTP_PASSWORD
```

---

## 🚀 Quick Start

### Clone Repository

```bash
git clone https://github.com/<username>/AzureInventoryAutomation.git
```

### Configure GitHub Secrets

Add:

```text
AZURE_CLIENT_ID
AZURE_CLIENT_SECRET
AZURE_TENANT_ID
SMTP_USERNAME
SMTP_PASSWORD
```

### Run Workflow

```text
GitHub → Actions → Azure Inventory Automation → Run Workflow
```

---

## 📊 Sample Deliverables

✅ Azure Inventory Report (.xlsx)

✅ GitHub Artifact

✅ Email Notification

✅ Scheduled Execution



---

⭐ If you found this project useful, consider starring the repository.
