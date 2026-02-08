# 🧊 Azure Terraform Modules – Enterprise Infrastructure Library

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=rounded&color=0:0078D4,50:4FC3F7,100:00E5FF&height=220&section=header&text=Azure%20Terraform%20Modules&fontSize=42&fontColor=ffffff&animation=twinkling" />
</p>

<p align="center">
  <b>Enterprise • Modular • Secure • Production-Ready</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Cloud-Azure-0078D4?style=for-the-badge" />
  <img src="https://img.shields.io/badge/IaC-Terraform-623CE4?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Modules-Reusable-success?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Status-Enterprise--Ready-blue?style=for-the-badge" />
</p>

<p align="center">
  <img src="https://skillicons.dev/icons?i=azure,terraform,linux,github,git&perline=10" />
</p>

---

## 🧠 Executive Summary

This repository is a **professional, enterprise-grade collection of reusable Terraform modules for Microsoft Azure**. It is designed to mirror **real-world cloud platform teams** where infrastructure is built using **standardized, versioned, and reusable modules**.

The goal of this repository is to:

* Enable **scalable Azure infrastructure provisioning**
* Enforce **clean architecture and separation of concerns**
* Follow **industry DevOps & IaC best practices**

This structure is ideal for **MNC interviews, production use cases, and platform engineering portfolios**.

---

## 🧩 High-Level Architecture (3D Concept View)

```text
 ┌────────────────────────────────────────────┐
 │              Azure Subscription            │
 └──────────────────────┬─────────────────────┘
                        │
        ┌───────────────▼───────────────┐
        │        Resource Group          │
        └───────────────┬───────────────┘
                        │
   ┌──────────────┬──────────────┬──────────────┐
   │ Virtual Net  │ LoadBalancer │ Virtual Mach │
   │ + Subnets    │ + Public IP  │ (Linux/Win) │
   └──────┬───────┴──────┬───────┴──────┬───────┘
          │              │              │
   ┌──────▼───────┐ ┌────▼─────┐ ┌──────▼───────┐
   │ Key Vault    │ │ MSSQL DB │ │ VM Extensions │
   │ + Secrets    │ │ & Server │ │ (Future)     │
   └──────────────┘ └──────────┘ └──────────────┘
```

---

## 🗂️ Repository Structure (Enterprise Module Design)

```bash
Infrastructure_generic/
├── Env/
│   └── dev/
│       ├── main.tf              # Root module
│       ├── provider.tf          # Azure provider config
│       ├── variables.tf         # Input variables
│       └── terraform.tfvars     # Environment values
│
├── module/
│   ├── resource_group/          # Azure Resource Group module
│   ├── virtual_network/         # VNet & subnet module
│   ├── virtual_machine/         # VM (Linux/Windows)
│   ├── public_ip/               # Public IP module
│   ├── loadbalancer/            # Azure Load Balancer
│   ├── load_association/        # LB–NIC association
│   ├── key_vault/               # Azure Key Vault
│   ├── key_secret/              # Key Vault secrets
│   ├── mssql_server/            # Azure SQL Server
│   └── mssql_database/          # Azure SQL Database
│
└── README.md
```

---

## 🧱 Module Philosophy

Each module is designed with:

* 📦 **Single responsibility principle**
* 🔁 **Reusability across environments**
* 🧩 **Loose coupling & clear inputs/outputs**
* 🏷️ **Consistent naming & tagging**

> This mirrors **Azure Landing Zone & enterprise platform engineering practices**.

---

## ⚙️ Technology Stack

| Layer    | Tools & Services               |
| -------- | ------------------------------ |
| Cloud    | Microsoft Azure                |
| IaC      | Terraform                      |
| Compute  | Azure Virtual Machines         |
| Network  | VNet, Load Balancer, Public IP |
| Security | Azure Key Vault                |
| Database | Azure SQL Server & Database    |
| DevOps   | Git, GitHub                    |

---

## 🚀 How to Use (Dev Environment)

```bash
cd Env/dev
terraform init
terraform validate
terraform plan
terraform apply
```

---

## 🧠 Enterprise Best Practices Followed

* ✅ Modular Terraform architecture
* ✅ Environment-based separation
* ✅ Secure secret management (Key Vault)
* ✅ Scalable & maintainable IaC
* ✅ Interview & production ready design

---

## 🔮 Roadmap (Architect Vision)

* 🔐 Private Endpoints for Key Vault & SQL
* 🌍 Multi-environment (stage/prod)
* 🔄 CI/CD with GitHub Actions / Azure DevOps
* 📊 Monitoring & diagnostics modules
* 🧩 Terraform Registry–ready modules

---

## 👨‍💼 Author

**Tushar Mishra**
DevOps Engineer | Azure Cloud | Terraform | CI/CD

🚀 *Actively seeking DevOps / Cloud Engineer roles*

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:00E5FF,100:0078D4&height=160&section=footer" />
</p>

---

⭐ **If this repository reflects enterprise-quality IaC, please star it!**
