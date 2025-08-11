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
  ```
- `jq` installed for JSON parsing  
  ```bash
  sudo apt install jq -y
  ```

---

## 📜 Usage
1. Make the script executable:
   ```bash
   chmod +x aws_resource_tracker.sh
   ```
2. Run the script:
   ```bash
   ./aws_resource_tracker.sh
   ```

The output will be saved in a log file named:
```
resourceTracker_YYYY-MM-DD_HH-MM-SS.log
```

---

## ⏰ Automating with Cron
To run the script every day at 6 AM:
```bash
crontab -e
```
Add this line:
```
0 6 * * * /full/path/to/aws_resource_tracker.sh
```
*(Replace `/full/path/to/` with the actual folder path where the script is saved)*

To view your cron jobs:
```bash
crontab -l
```

---

## 📄 Author
**Chandana Krishna**  
[LinkedIn](https://www.linkedin.com/in/chandanakrishna27) | [GitHub](https://github.com/chandanakrishna27)

