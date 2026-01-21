\# 🚀 AWS ALB Auto Scaling with CloudWatch Architecture



!\[AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)

!\[EC2](https://img.shields.io/badge/EC2-AutoScaling-blue)

!\[ALB](https://img.shields.io/badge/ALB-Application\_Load\_Balancer-green)

!\[CloudWatch](https://img.shields.io/badge/CloudWatch-Monitoring-red)

!\[Status](https://img.shields.io/badge/Status-Completed-success)



---



\## 📌 Project Overview



This project demonstrates a \*\*real-world AWS architecture\*\* using:



\- Application Load Balancer (ALB)

\- Auto Scaling Group (ASG)

\- EC2 instances with User Data

\- CPU-based Auto Scaling

\- CloudWatch Alarms \& Metrics



The application automatically \*\*scales IN and OUT\*\* based on CPU usage and traffic.



---



\## 🏗️ Architecture Diagram



User → ALB (DNS)

↓

Target Group (HTTP :80)

↓

Auto Scaling Group

↓

EC2 Instances (Ubuntu + Apache)





---



\## ⚙️ Services Used



\- \*\*Amazon EC2\*\*

\- \*\*Application Load Balancer\*\*

\- \*\*Auto Scaling Group\*\*

\- \*\*Target Groups\*\*

\- \*\*CloudWatch (CPU Alarms)\*\*

\- \*\*IAM Roles\*\*

\- \*\*Security Groups\*\*



---



\## 🔄 Auto Scaling Logic



| Metric | Action |

|------|--------|

| CPU > 70% | Scale OUT |

| CPU < 30% | Scale IN |



CloudWatch alarms trigger scaling policies automatically.



---



\## 🧑‍💻 EC2 USER DATA SCRIPT



Location:



user-data/user-data.sh





```bash

\#!/bin/bash

apt update -y

apt install apache2 -y

systemctl start apache2

systemctl enable apache2



INSTANCE\_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)



echo "<h1>Auto Scaling EC2 Instance</h1>" > /var/www/html/index.html

echo "<p>Instance ID: $INSTANCE\_ID</p>" >> /var/www/html/index.html



🧪 Testing Performed



Opened ALB DNS in browser



Refreshed multiple times



Verified instance ID changes



Generated CPU load



Confirmed Scale OUT / IN



CloudWatch alarms triggered successfully



🧪 Testing Performed



Opened ALB DNS in browser



Refreshed multiple times



Verified instance ID changes



Generated CPU load



Confirmed Scale OUT / IN



CloudWatch alarms triggered successfully



🚨 Common Issues \& Fixes

❌ 502 Bad Gateway



✔ Ensure Apache is running

✔ Target group health check path /

✔ Security group allows port 80



❌ Instance Unhealthy



✔ User data executed correctly

✔ Port 80 allowed from ALB SG

✔ Health check protocol = HTTP



📂 Project Structure

aws-alb-autoscaling-cloudwatch-architecture/

│

├── README.md

├── .gitignore

├── user-data/

│   └── user-data.sh

└── docs/



🎯 Learning Outcome



Real AWS production-style architecture



Auto Scaling concepts



Load Balancer troubleshooting



CloudWatch alarm design



Hands-on DevOps experience



🧑‍🚀 Author



Irfan Pasha

AWS | Cloud | DevOps

🔗 GitHub: https://github.com/IrfanPasha05



⭐ If you like this project, give it a star!

