<a href="https://github.com/Drook93/Animal-Vision-Pipeline">
  <img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/ANIMAL%20VISION%20PIPELINE.png" 
       width="100%" 
       height="1000px" />
</a>
<div align="center">

#### **This is a full lifecyle pipeline for animal detection and classification from video data. Starts with data ingestion from API's, YOLO-based object detection, metadata extraction, database storage with FastAPI for querying the findings. This is the complete full production infrastructure with Docker, Airflow for orchestration with monitoring.**

<a href="https://github.com/Drook93/Animal-Vision-Pipeline">
  <img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/SYSTEM_TOPOLOGOY_DESIGN.drawio.svg" width="90%" />
</a>

</div>


<div align="center">

## Prerequisites (Ensure you have these before you start)

In order to 

**Docker Desktop** [Go to link to download relevant Docker Desktop for your specific OS system]  - https://www.docker.com/products/docker-desktop/

**AWS Console** [Go to link to download relevant Docker Desktop for your specific OS system]



##  Security & Secrets Management

This project handles sensitive credentials (database passwords, API keys, AWS access) safely — no secrets are hardcoded or committed to this repository.

**Key practices used:**
- **AWS Secrets Manager** — all credentials stored and retrieved at runtime
- **IAM Least-Privilege Policies** — each service only accesses what it needs
- **`.env` never committed** — git-ignored for local development
- **GitHub Actions Secrets** — used for CI/CD, never inline in YAML

> For full setup instructions, IAM policy examples, and a security checklist, see the:
> ###  [Security Setup Guide →](./Documents/SECURITY_SETUP.md)

---
## Requirements
For full dependency versions see → [requirements.md](https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/requirements.md)



### Set-up & Troubleshooting
The links below point to sub-folders for all the tools used throughout this project. The links point to the set-up and troubleshooting faced. To check versions required please refer to the requirements.md file listed above.
Please ensure you have finished the full prerequisites stated above and have installed all version dependencies before proceeding.

---

</div>
<div align="center">

<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/docker/docker_image_display.webp" width="400"/>

| Docker (Containerisation) | Set-up & Troubleshooting |
| ------------------------- | ------------------------ |
| PostgreSQL                |  |
| Redis                     |  |
| Scheduler                 |  |
| DAG Processor             |  |
| Airflow Webserver         |  |
| Worker                    |  |

## Start the application
**Ensure you're docker descktop is open and active before running these commands in the terminal.**

Replace the placeholder "your_docker_name_here.yml" with your files name.
Run the following command:
It reads your docker-compose.yml file, downloads the images, creates the containers, and starts them all at once and hides

```bash
docker compose -f your_docker_name_here.yml up -d
```
This stops all running containers for the application and removes them with any networks created.
```bash
docker compose -f your_docker_name_here.yml down -d
```
```bash
docker compose -f your_docker_name_here.yml stop
```
```bash
docker compose -f your_docker_name_here.yml restart <service>
```

```bash
docker compose -f your_docker_name_here.yml logs -f
```

```bash
docker compose -f your_docker_name_here.yml ps
```

```bash
docker compose -f your_docker_name_here.yml build
```

```bash
docker compose -f your_docker_name_here.yml exec <service> sh
```

```bash
docker compose -f your_docker_name_here.yml exec <service> sh
```

```bash
docker compose -f your_docker_name_here.yml stats
```
Network debugging inside service containers. Use Nicolaka/netwshooting to troubleshoot inside service containers. Ensure you have **"--rm"** otherwise the container stays on your disk if you exit the terminal. If you don't include **""--it""** as "i" allows for you to type commands and "t" gives you a text interface that looks like a real terminal

```bash
docker run --rm --it --network container:<worker_name> nicolaka/netshoot
```
To check DNS:
```bash
dig api-service-name
```
To check open ports:
```bash
nmap api-service-name
```
To see live traffic (Packet Sniffing):
```bash
tcpdump -i eth0
```
To test the API connection:
```bash
curl -v http://api-service-name:8080/health
```
---

<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/airflow/AirflowLogo.svg" width="200"/>

| Apache Airflow | Set-up & Troubleshooting |
| -------------- | ------------------------ |
| PostgreSQL     |  |

---

### A Directed Acyclic Graph (DAG) is a model used in data engineering and computer science to schedule, organize, and execute workflows by defining the specific order and dependencies of tasks. 
<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/DAG/Directed-Acyclic-Graph.png" width="300"/>



| DAG Files          | Set-up & Troubleshooting |
| ------------------ | ------------------------ |
| Data Ingestion DAG |  |
| Cleaning & Validation DAG |  |
| Feature Engineering DAG |  |
| Training & Evaluation DAG |  |
| Model Serving DAG |  |

---

<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/aws/AWS%20Logo.png" width="150"/>

| Amazon Web Services                  | Set-up & Troubleshooting |
| ------------------------------------ | ------------------------ |
| Amazon S3 (Data-lake)                |  |
| Identity and Access Management (IAM) |  |
| Secrets Manager                      |  |

<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/prometheus/prometheus_logo.png" width="200"/>

| Prometheus                           | Set-up & Troubleshooting |
| ------------------------------------ | ------------------------ |
| Prometheus Server                    |  |
| PostgreSQL Exporter                  | ✅ |
| Node Exporter (CPU, RAM, Disk)       | ✅ |
| Alertmanager                         | ✅ |

<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/grafana/grafana_logo.png" width="200"/>

| Grafana                           | Set-up & Troubleshooting |
| ------------------------------------ | ------------------------ |
| Prometheus Server                    | ✅ |
| PostgreSQL Exporter                  | ✅ |
| Node Exporter (CPU,RAM, Disk)        | ✅ |
| Alertmanager                         | ✅ |


<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/mlflow/mlflow_logo.webp" width="150"/>

| Mlflow                               | Set-up & Troubleshooting |
| ------------------------------------ | ------------------------ |
| Amazon S3 (Data-lake)                | ✅ |
| Identity and Access Management (IAM) | ✅ |
| Secrets Manager                      | ✅ |



<img src="https://github.com/Drook93/Animal-Vision-Pipeline/blob/main/Documents/images/postgresql/postgresql_logo.jpg" width="200"/>

| PostgreSQL                           | Set-up & Troubleshooting |
| ------------------------------------ | ------------------------ |
| Amazon S3 (Data-lake)                | ✅ |
| Identity and Access Management (IAM) | ✅ |
| Secrets Manager                      | ✅ |

</div>



