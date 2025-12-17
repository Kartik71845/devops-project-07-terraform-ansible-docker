# devops-project-07-terraform-ansible-docker

## Overview
This project demonstrates a simple but real-world DevOps workflow where:

- Terraform provisions AWS EC2 infrastructure
- Ansible performs configuration management
- Docker is used to run an Nginx web server
- The same configuration is applied consistently across multiple EC2 instances

![alt text](<Untitled (9).gif>)

The focus of this project is **automation, consistency, and clarity**, suitable for a DevOps fresher.

---

## Tech Stack
- AWS EC2
- Terraform
- Ansible
- Docker
- Nginx
- Linux (Ubuntu)

---

## Project Architecture
1. Terraform creates multiple EC2 instances in AWS
2. Public IPs are added to the Ansible inventory
3. Ansible connects to EC2 using SSH
4. Ansible installs Docker
5. Ansible runs an Nginx container on each EC2 instance

---

## Folder Structure
.
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ └── user_data.sh
│
├── ansible/
│ ├── playbook.yml
│ ├── inventory.ini
│ └── ansible.cfg
└── README.md

yaml
Copy code

---

## How to Run

### 1. Provision Infrastructure
```bash
terraform init
terraform apply
2. Update Ansible Inventory
Add EC2 public IPs to:

bash
Copy code
ansible/inventory.ini
3. Run Ansible Playbook
bash
Copy code
ansible-playbook -i ansible/inventory.ini ansible/playbook.yml
Key Concepts Demonstrated
Infrastructure as Code (Terraform)

Configuration Management (Ansible)

Idempotent automation

Multi-instance server configuration

Docker-based application deployment
