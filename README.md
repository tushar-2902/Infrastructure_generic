# ☁️ Azure Terraform Modules – Enterprise Platform Architecture

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=rounded&color=0:0F2027,50:0078D4,100:00C6FF&height=240&section=header&text=Enterprise%20Azure%20Terraform%20Platform&fontSize=40&fontColor=ffffff&animation=twinkling" />
</p>

<p align="center">
  <b>Platform Engineering • Modular IaC • Secure by Design • Production-Grade</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Cloud-Microsoft%20Azure-0078D4?style=for-the-badge" />
  <img src="https://img.shields.io/badge/IaC-Terraform-623CE4?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Architecture-Landing%20Zone%20Aligned-success?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Environment-Dev%20Ready-blue?style=for-the-badge" />
</p>

<p align="center">
  <img src="https://skillicons.dev/icons?i=azure,terraform,linux,github,git&perline=10" />
</p>

---

## 🧠 Executive Overview

This repository represents a **production-aligned Azure Infrastructure Platform built using reusable Terraform modules**.
It mirrors how **enterprise cloud teams and platform engineering units** design scalable, secure, and standardized infrastructure.

The architecture follows:

* 🏗️ Modular Infrastructure as Code principles
* 🔐 Security-first cloud design
* ♻️ Reusable and environment-agnostic modules
* 📐 Azure Landing Zone–inspired structure

Designed for:

* 💼 MNC / Enterprise DevOps interviews
* 🏢 Real-world production deployments
* 🚀 Cloud platform engineering portfolios

---

# 🧊 Platform Architecture – Conceptual 3D View

```text
 ┌────────────────────────────────────────────────────┐
 │                Azure Subscription                  │
 └───────────────────────────┬────────────────────────┘
                             │
                ┌────────────▼────────────┐
                │     Resource Group       │
                └────────────┬────────────┘
                             │
   ┌──────────────┬──────────────┬──────────────┐
   │ Virtual Net  │ LoadBalancer │ Virtual Mach │
   │ + Subnets    │ + Public IP  │  Compute     │
   └──────┬───────┴──────┬───────┴──────┬───────┘
          │              │              │
   ┌──────▼───────┐ ┌────▼─────┐ ┌──────▼────────┐
   │ Key Vault    │ │ MSSQL DB │ │ Diagnostics    │
   │ + Secrets    │ │ & Server │ │ & Extensions   │
   └──────────────┘ └──────────┘ └───────────────┘
```

---

# 🗂️ Enterprise Repository Structure

```bash
Infrastructure_generic/
├── Env/
│   └── dev/
│       ├── main.tf              # Root orchestration layer
│       ├── provider.tf          # Azure provider configuration
│       ├── variables.tf         # Input variable definitions
│       └── terraform.tfvars     # Environment-specific values
│
├── module/
│   ├── resource_group/          # Resource Group provisioning
│   ├── virtual_network/         # VNet & subnet architecture
│   ├── virtual_machine/         # Linux/Windows VM module
│   ├── public_ip/               # Public IP abstraction
│   ├── loadbalancer/            # Azure Load Balancer module
│   ├── load_association/        # NIC ↔ LB association
│   ├── key_vault/               # Secure secrets vault
│   ├── key_secret/              # Managed secret injection
│   ├── mssql_server/            # Azure SQL Server
│   └── mssql_database/          # Azure SQL Database
│
└── README.md
```

---

# 🧱 Platform Engineering Principles

Each module is designed to enforce:

* 📦 Single Responsibility Principle
* 🔁 Environment reusability (dev/stage/prod ready)
* 🧩 Clear input/output contracts
* 🏷️ Standardized tagging strategy
* 🔐 Secure secret handling via Key Vault

This design reflects **real enterprise cloud governance models**.

---

# ⚙️ Technology Stack

| Layer      | Services & Tools                        |
| ---------- | --------------------------------------- |
| Cloud      | Microsoft Azure                         |
| IaC        | Terraform                               |
| Networking | VNet, Subnets, Load Balancer, Public IP |
| Compute    | Azure Virtual Machines                  |
| Security   | Azure Key Vault                         |
| Database   | Azure SQL Server & Database             |
| DevOps     | Git, GitHub                             |

---

# 🚀 Deployment Workflow (Dev Environment)

```bash
cd Env/dev
terraform init
terraform validate
terraform plan
terraform apply
```

Deployment Outcome:

✔️ Resource Group created
✔️ Network infrastructure provisioned
✔️ Compute & Load Balancer deployed
✔️ Key Vault integrated
✔️ SQL infrastructure configured

---

# 🧠 Enterprise Best Practices Implemented

* ✅ Modular Terraform architecture
* ✅ Environment isolation strategy
* ✅ Secure secret management
* ✅ Version-controlled IaC
* ✅ Scalable & maintainable structure
* ✅ Production-aligned design pattern

---

# 🔮 Strategic Roadmap (Architect Vision)

* 🔐 Private Endpoints integration
* 🌍 Multi-environment branching (dev/stage/prod)
* 🔄 CI/CD with GitHub Actions / Azure DevOps
* 📊 Monitoring & diagnostics module
* 🧩 Terraform Registry publishing
* 🛡️ Azure Policy & RBAC enforcement modules

---

# 👨‍💼 Maintainer

**Tushar Mishra**
DevOps Engineer | Azure Cloud | Terraform | CI/CD | Platform Engineering

🚀 Actively open to DevOps / Cloud / Platform Engineer opportunities

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:00C6FF,100:0F2027&height=170&section=footer" />
</p>

---

⭐ If this repository reflects enterprise-grade Azure infrastructure design, consider starring
