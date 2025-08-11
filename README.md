# AWS Resource Tracker

A Bash script to automatically list and log AWS resources including:

- S3 Buckets
- EC2 Instances
- Lambda Functions
- IAM Users

The script can be scheduled with **cron** to generate periodic reports without manual intervention.

---

## 🚀 Features
- Lists AWS S3 buckets
- Displays EC2 instance IDs
- Shows AWS Lambda functions
- Lists IAM users
- Outputs logs with timestamps
- Supports automation via cron

---

## 🛠 Prerequisites
- AWS CLI v2 installed and configured  
  ```bash
  aws configure
