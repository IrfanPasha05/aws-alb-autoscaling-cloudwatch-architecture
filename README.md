# 🚀 AWS ALB Auto Scaling with CloudWatch Architecture

<p align="center">
  <img src="https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws" />
  <img src="https://img.shields.io/badge/EC2-AutoScaling-blue" />
  <img src="https://img.shields.io/badge/ALB-LoadBalancer-green" />
  <img src="https://img.shields.io/badge/CloudWatch-Monitoring-red" />
  <img src="https://img.shields.io/badge/Status-Completed-success" />
</p>

---

## 📌 Project Overview

This is a **real-time AWS hands-on project** where I designed and implemented a **highly available, scalable, and monitored web application architecture** using core AWS services.

The solution automatically:
- Distributes traffic using **Application Load Balancer (ALB)**
- Scales EC2 instances using **Auto Scaling Group**
- Monitors performance using **Amazon CloudWatch**

This project is completely **production-style** and suitable for **AWS interviews, GitHub portfolio, and resume**.

---

## 🧱 AWS Services Used

- Amazon VPC  
- Public Subnets (Multi-AZ)  
- Internet Gateway  
- Route Tables  
- Security Groups  
- EC2 Instances  
- Application Load Balancer (ALB)  
- Target Group  
- Auto Scaling Group (ASG)  
- Amazon CloudWatch  

---

## 🏗️ Architecture Flow

User
|
v
Application Load Balancer
|
v
Target Group
|
v
EC2 Instances (Auto Scaling Group)
|
v
CloudWatch Monitoring & Scaling


---

## 🪜 Step-by-Step Implementation (PIN TO PIN)

---

### 🔹 Step 1: Create Custom VPC

- Created a custom VPC
- CIDR Block: `10.0.0.0/16`
- Enabled DNS Resolution & DNS Hostnames

👉 Purpose: Isolated network for AWS resources

---

### 🔹 Step 2: Create Public Subnets (Multi-AZ)

- Subnet 1: `10.0.1.0/24` (AZ-1)
- Subnet 2: `10.0.2.0/24` (AZ-2)
- Enabled auto-assign public IPv4

👉 Purpose: High availability across availability zones

---

### 🔹 Step 3: Create Internet Gateway (IGW)

- Created an Internet Gateway
- Attached it to the VPC

👉 Purpose: Enable internet access for public resources

---

### 🔹 Step 4: Configure Route Table

- Created public route table
- Added route:
  - `0.0.0.0/0 → Internet Gateway`
- Associated with both public subnets

👉 Purpose: Allow internet traffic

---

### 🔹 Step 5: Create Security Group

**Inbound Rules**
- HTTP (80) → Anywhere
- SSH (22) → My IP

**Outbound Rules**
- Allow all traffic

👉 Purpose: Secure access control

---

### 🔹 Step 6: Create EC2 User Data Script

```bash
#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "<h1>Application running via Auto Scaling</h1>" > /var/www/html/index.html

👉 Purpose: Automatically configure web server

🔹 Step 7: Create Target Group

Target type: Instance

Protocol: HTTP

Port: 80

Health check path: /

👉 Purpose: Forward traffic to healthy EC2 instances

🔹 Step 8: Create Application Load Balancer

Internet-facing ALB

Attached to both public subnets

Listener: HTTP on port 80

Forwarded to Target Group

👉 Purpose: Load distribution

🔹 Step 9: Create Launch Template

Amazon Linux 2

t2.micro

Security Group attached

User Data script included

👉 Purpose: Blueprint for EC2 instances

🔹 Step 10: Create Auto Scaling Group

Linked Launch Template

Subnets: Both public subnets

Capacity:

Minimum: 1

Desired: 2

Maximum: 4

Attached Target Group

👉 Purpose: Automatic scaling

🔹 Step 11: Configure CloudWatch Alarms

CPU Utilization > 70% → Scale Out

CPU Utilization < 30% → Scale In

👉 Purpose: Real-time monitoring & scaling

✅ Final Result

✔ Highly available architecture
✔ Auto-scaled EC2 instances
✔ Load balanced application
✔ CloudWatch monitoring enabled
✔ Production-ready AWS setup

🧠 Skills Gained

AWS VPC & Networking

Load Balancing (ALB)

Auto Scaling

CloudWatch Monitoring

EC2 & Security Groups

Real-world cloud architecture

📌 Use Cases

AWS Interview Project

GitHub Portfolio

Resume Project

Hands-on AWS Practice

🔚 Conclusion

This project demonstrates end-to-end AWS infrastructure implementation following best practices.
It reflects real-world cloud engineering skills and production-level design.
