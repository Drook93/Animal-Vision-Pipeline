# Requirements

## Core Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| Python | 3.12.13 | Runtime |
| Apache Airflow | 3.1.8 | Pipeline orchestration |
| Celery | 5.6.3 | Distributed task queue |
| apache-airflow-providers-amazon | 9.24.0 | AWS/S3 integration |
| apache-airflow-providers-fab | 3.6.0 | Airflow authentication |
| boto3 | 1.42.86 | AWS SDK |
| s3fs | 0.4.2 | S3 file system interface |
| requests | 2.33.1 | REST API ingestion |
| tenacity | 9.1.4 | Retry logic |
| Redis | 6.4.0 | Message broker |
| PostgreSQL | 13.23 | Metadata database |

## System Requirements

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| RAM | 8GB | 16GB |
| CPU | 4 cores | 8 cores |
| Disk Space | 20GB | 50GB |
| OS | Ubuntu 20.04 | Ubuntu 22.04 |

## Docker

| Component | Version |
|-----------|---------|
| Docker Engine | run `docker --version` |
| Docker Compose | run `docker compose version` |
