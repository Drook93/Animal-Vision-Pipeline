<a href="https://github.com/Drook93/Global-Video-Game-Sales">
  <img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/ANIMAL%20VISION%20PIPELINE.png" 
       width="100%" 
       height="1000px" />
</a>
<div align="center">

#### **This is a full lifecyle pipeline for animal detection and classification from video data. Starts with data ingestion from API's, YOLO-based object detection, metadata extraction, database storage with FastAPI for querying the findings. This is the complete full production infrastructure with Docker, Airflow for orchestration with monitoring.**

<a href="https://github.com/Drook93/Animal-Vision-Pipeline">
  <img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/Topology%20Diagram.drawio.svg" width="90%" />
</a>

</div>


<div align="center">

## 🔐 Security & Secrets Management

This project handles sensitive credentials (database passwords, API keys, AWS access) safely — no secrets are hardcoded or committed to this repository.

**Key practices used:**
- 🔑 **AWS Secrets Manager** — all credentials stored and retrieved at runtime
- 🛡️ **IAM Least-Privilege Policies** — each service only accesses what it needs
- 🚫 **`.env` never committed** — git-ignored for local development
- ✅ **GitHub Actions Secrets** — used for CI/CD, never inline in YAML

> For full setup instructions, IAM policy examples, and a security checklist, see the:
> ### 📄 [Security Setup Guide →](./Documents/SECURITY_SETUP.md)

---
## Requirements
For full dependency versions see → [requirements.md](./Documents/requirements.md)



### Set-up & Troubleshooting
The links below point to sub-folders for all the tools used in this project. The links point to the set-up and troubleshooting faced. To check versions required please refer to the requirements.md file.

---

</div>
<div align="center">

<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/docker/docker_image_display.webp" width="400"/>

| Docker (Containerisation) | Set-up & Troubleshooting |
| ------------------------- | ------------------------ |
| PostgreSQL                | ✅ |
| Redis                     | ✅ |
| Scheduler                 | ✅ |
| DAG Processor             | ✅ |
| Airflow Webserver         | ✅ |
| Worker                    | ✅ |

---

<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/airflow/AirflowLogo.svg" width="200"/>

| Apache Airflow | Set-up & Troubleshooting |
| -------------- | ------------------------ |
| PostgreSQL     | ✅ |

---

<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/DAG/Directed-Acyclic-Graph.png" width="300"/>

| DAG Files          | Set-up & Troubleshooting |
| ------------------ | ------------------------ |
| REST API Ingestion | ✅ |

---

<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/aws/AWS%20Logo.png" width="150"/>

| Amazon Web Services                  | Set-up & Troubleshooting |
| ------------------------------------ | ------------------------ |
| Amazon S3 (Data-lake)                | ✅ |
| Identity and Access Management (IAM) | ✅ |
| Secrets Manager                      | ✅ |

</div>



