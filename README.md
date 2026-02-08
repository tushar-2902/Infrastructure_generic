<!-- 🌟 3D Styled Header Banner -->
<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=rounded&color=232F3E&height=190&fontSize=38&fontColor=FFFFFF&text=AWS%20EC2%20with%20Elastic%20IP%20%7C%20Terraform&animation=fadeIn&desc=Infrastructure%20as%20Code%20%7C%20Static%20Public%20IP%20Automation%20%7C%20AWS&descSize=18&descAlign=50&descAlignY=72"/>
</p>

<!-- ⌨️ Typing Animation -->
<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&size=22&pause=1000&color=FF9900&center=true&vCenter=true&width=900&lines=Terraform+on+AWS;EC2+Provisioning+with+Elastic+IP;Static+Public+IP+Automation;DevOps+IaC+Project" />
</p>

<!-- 🔰 Badges -->
<p align="center">
  <img src="https://img.shields.io/badge/Cloud-AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=FF9900"/>
  <img src="https://img.shields.io/badge/Service-EC2-orange?style=for-the-badge&logo=amazonec2&logoColor=white"/>
  <img src="https://img.shields.io/badge/Network-Elastic%20IP-blue?style=for-the-badge&logo=amazonaws&logoColor=white"/>
  <img src="https://img.shields.io/badge/IaC-Terraform-5C4EE5?style=for-the-badge&logo=terraform&logoColor=white"/>
</p>

---

## 🚀 Project Overview

This project demonstrates **provisioning an AWS EC2 instance with an Elastic IP (EIP)** using **Terraform**.  
Elastic IP provides a **static public IPv4 address**, ensuring consistent connectivity even after instance restarts.

The project follows **Infrastructure as Code (IaC)** principles and reflects a **real-world DevOps automation use case**.

---

## 🧩 Components Provisioned

- 🖥️ AWS EC2 Instance  
- 🌐 Elastic IP (VPC scoped)  
- 🔗 Elastic IP association with EC2  
- 🏷️ Resource tagging using Terraform  
- ⚙️ AWS Provider configuration  

---

## 📂 Repository Structure

```bash
aws_folder/
├── EC2_instances/
│   ├── EC2.tf
│   └── provider.tf
├── elastic_ip/
│   ├── elastic_ip.tf
│   ├── association_eip.tf
│   ├── ec2.tf
│   ├── provider.tf
│   └── terraform.tfstate
└── README.md
```

---

## ⚙️ Key Terraform Snippets

```hcl
resource "aws_eip" "static_ip" {
  domain = "vpc"

  tags = {
    Name = "tushar-elastic-ip"
  }
}
```

```hcl
resource "aws_eip_association" "attach_eip" {
  instance_id   = aws_instance.example.id
  allocation_id = aws_eip.static_ip.id
}
```

---

## 🏗️ Architecture Flow

```mermaid
graph TD
    A[Terraform CLI] --> B[AWS Provider]
    B --> C[EC2 Instance 🖥️]
    B --> D[Elastic IP 🌐]
    D --> E[EIP Association 🔗]
    E --> C
```

---

## 🧪 How to Run

```bash
# Configure AWS credentials
aws configure

# Initialize Terraform
terraform init

# Validate configuration
terraform validate

# Review execution plan
terraform plan

# Create infrastructure
terraform apply -auto-approve

# Cleanup resources (optional)
terraform destroy -auto-approve
```

---

## 🛡️ Best Practices Followed

- Infrastructure as Code (IaC)
- Separation of resources into logical files
- Static public IP allocation using Elastic IP
- Clean, readable Terraform configuration
- Suitable for CI/CD & automation pipelines

---

## 👨‍💻 Author

**Tushar Mishra**  
DevOps Engineer | AWS | Terraform  
📧 Email: tusharmishra2902@gmail.com  
🔗 LinkedIn: https://linkedin.com/in/tushar-mishra-02461235a  
🐙 GitHub: https://github.com/tushar-2902  

---

## 📜 License

Licensed under the **MIT License**.

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=232F3E&height=110&section=footer"/>
</p>
