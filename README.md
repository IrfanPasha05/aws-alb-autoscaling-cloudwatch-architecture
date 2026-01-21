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

This is a **real-time AWS production-style project** that demonstrates:

- Application Load Balancer (ALB)
- EC2 Auto Scaling Group
- CPU-based scaling using CloudWatch Alarms
- High Availability & Fault Tolerance
- Dynamic scaling (IPs change automatically)

✅ Built **manually from AWS Console**  
✅ No Terraform (Beginner-friendly)  
✅ Resume & Interview ready project  

---

## 🧱 Architecture Diagram

```
User
 ↓
Application Load Balancer (ALB)
 ↓
Target Group
 ↓
Auto Scaling Group
 ↓
EC2 Instances (Apache Web Server)
```

---

## ⚙️ Services Used

| Service | Purpose |
|------|--------|
| Amazon EC2 | Compute instances |
| Application Load Balancer | Traffic distribution |
| Auto Scaling Group | Automatic scaling |
| CloudWatch | CPU monitoring & alarms |
| VPC | Network isolation |
| IAM | Secure permissions |

---

## 📁 Project Folder Structure

```
aws-alb-autoscaling-cloudwatch-architecture/
│
├── user-data/
│   └── user-data.sh
│
├── README.md
├── .gitignore
```

---

## 🧑‍💻 EC2 USER DATA SCRIPT

📂 `user-data/user-data.sh`

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

echo "<h1>Auto Scaling EC2 Instance</h1>" > /var/www/html/index.html
echo "<h2>Instance ID: $INSTANCE_ID</h2>" >> /var/www/html/index.html
```

---

## 📊 Auto Scaling & CloudWatch Setup

### 🔹 Scaling Policy
- **Scale Out** → CPU > 70%
- **Scale In** → CPU < 30%

### 🔹 CloudWatch Alarms
- Alarm triggers scaling automatically
- No manual intervention required

---

## 🌐 How to Test Auto Scaling

1. Open ALB DNS name in browser
2. Refresh page → Instance ID changes
3. Create CPU load:
   ```bash
   yes > /dev/null &
   ```
4. Watch new EC2 instances launch 🎉

---

## 🛠️ Troubleshooting

| Issue | Fix |
|----|----|
| 502 Bad Gateway | Check target group health |
| EC2 unhealthy | Verify user-data & SG |
| SSH not working | Check port 22 SG |
| Page not loading | Ensure Apache is running |

---

## 🎯 What You Learn

✔ Real AWS Architecture  
✔ Load Balancer + Auto Scaling  
✔ CloudWatch Monitoring  
✔ Production troubleshooting  
✔ Resume-level project  

---

## 🧑‍🚀 Author

**Irfan Pasha**  
Cloud & AWS Engineer  
GitHub: https://github.com/IrfanPasha05

⭐ If you like this project, give it a star!
