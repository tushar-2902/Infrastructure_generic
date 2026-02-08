<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=rounded&height=220&section=header&text=Azure%20Infrastructure%20with%20Terraform&fontSize=36&fontColor=FFFFFF&animation=fadeIn&color=gradient&customColorList=0,232F3E,4B5563&v=99" />
</p>

<p align="center">
  <b>🚀 Enterprise-Grade | Modular | Scalable Azure Infrastructure (Terraform IaC)</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-Infrastructure%20as%20Code-7B42BC?style=for-the-badge&logo=terraform">
  <img src="https://img.shields.io/badge/Microsoft-Azure-0A66C2?style=for-the-badge&logo=microsoftazure">
  <img src="https://img.shields.io/badge/DevOps-Best%20Practices-6B7280?style=for-the-badge">
</p>

---

## ✨ Project Overview

This repository showcases a **production-ready Azure infrastructure** designed using **Terraform modular architecture**, following **enterprise cloud standards**.

---

## 🏗️ Enterprise Architecture Overview

```
┌──────────────────────────────────────────────┐
│              Azure Subscription              │
│                                              │
│  ┌────────────────────────────────────────┐  │
│  │            Resource Group               │  │
│  │                                        │  │
│  │  ┌──────────── Virtual Network ──────┐ │  │
│  │  │                                   │ │  │
│  │  │  ┌──────── Subnet (Frontend) ───┐ │ │  │
│  │  │  │   Azure Load Balancer         │ │ │  │
│  │  │  │        │                     │ │ │  │
│  │  │  │   Virtual Machines            │ │ │  │
│  │  │  └──────────────────────────────┘ │ │  │
│  │  │                                   │ │  │
│  │  │  ┌──────── Subnet (Backend) ─────┐ │ │  │
│  │  │  │   MSSQL Server & Database      │ │ │  │
│  │  │  └──────────────────────────────┘ │ │  │
│  │  └───────────────────────────────────┘ │  │
│  │                                        │  │
│  │        Azure Key Vault (Secrets)        │  │
│  └────────────────────────────────────────┘  │
└──────────────────────────────────────────────┘
```

---

## 📂 Repository Structure

```
Infrastructure_generic/
├── Env/
│   └── dev/
│       ├── main.tf
│       ├── provider.tf
│       ├── variables.tf
│       └── terraform.tfvars
├── module/
│   ├── resource_group/
│   ├── virtual_network/
│   ├── public_ip/
│   ├── loadbalancer/
│   ├── load_association/
│   ├── virtual_machine/
│   ├── key_vault/
│   ├── key_secret/
│   ├── mssql_server/
│   └── mssql_database/
└── README.md
```

---

## 🧩 Terraform Modules

| Module | Responsibility |
|------|----------------|
| resource_group | Resource Group |
| virtual_network | VNet & Subnets |
| public_ip | Public IP |
| loadbalancer | Load Balancer |
| load_association | Backend association |
| virtual_machine | Linux VM |
| key_vault | Secrets |
| key_secret | Secure values |
| mssql_server | SQL Server |
| mssql_database | SQL Database |

---

## 🔐 Security & Best Practices

- Azure Key Vault for secrets  
- No hard-coded credentials  
- Modular & scalable design  

---

## ⚙️ Deployment Steps

```
terraform init
terraform validate
terraform plan
terraform apply
```

---

## 👨‍💻 Author

**Tushar Mishra**  
DevOps Engineer | Azure | Terraform | CI/CD  
GitHub: https://github.com/tushar-2902

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=rect&height=120&section=footer&text=Build%20Cloud.%20Automate%20Everything.&fontSize=22&fontColor=FFFFFF&color=gradient&customColorList=0,232F3E,4B5563&v=3" />
</p>
