#  Start with Python base image
FROM python:3.12-slim

# Update the package list to ensure we get the latest versions available
RUN apt-get update && apt-get install -y --no-install-recommends \
    libpq-dev build-essential jq curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install system dependencies for Airflow and Postgres.
RUN apt-get update && \
    # Install the necessary system toopls required:
    # libpq-dev: Required for Python to talk to your Postgres database
    # build-essential: Tools like 'gcc' needed to compile some Python packages
    # jq: A lightweight tool to parse the JSON secrets coming from AWS
    # curl: Used by Docker to check if the Airflow webserver is "healthy"
    # --no-install-recommends: Only installs essential files to keep the image lean
    apt-get install -y --no-install-recommends libpq-dev build-essential && \
    apt-get clean && \
    # Clean up the temporary package files we just downloaded. 
    # Remove the package lists to save disk space in the final image.
    rm -rf /var/lib/apt/lists/*

# Install Apache Airflow and the FAB provider for authentication
RUN pip install --no-cache-dir \
    "apache-airflow[celery,redis,postgres]==3.1.8" \
    apache-airflow-providers-fab \
    apache-airflow-providers-amazon



# Expose port for web server
EXPOSE 8080

# Stops Airflow loading its built-in example DAGs when it starts. Keeps things clean.
ENV AIRFLOW__CORE__LOAD_EXAMPLES=False

# Tells Airflow where to look for your DAG files inside the container.
ENV AIRFLOW__CORE__DAGS_FOLDER=/opt/airflow/dags

# Tells Airflow where its metadata database is. Connecting to Postgres container using the airflow user, airflow password, on port 5432, to the airflow database
ENV AIRFLOW__DATABASE__SQL_ALCHEMY_CONN=postgresql+psycopg2://airflow:airflow@postgres:5432/airflow

# Tells Airflow to use Redis as its message broker for Celery. That's how tasks get queued and distributed to workers.
ENV AIRFLOW__CELERY__BROKER_URL=redis://redis:6379/0

# Tells Airflow where to store the results of completed tasks in Postgres.
ENV AIRFLOW__CELERY__RESULT_BACKEND=db+postgresql://airflow:airflow@postgres:5432/airflow

# Gets your entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Makes the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Runs the script first, which calls db migrate, then hands off to CMD to start the webserver. This way we ensure the database is ready before the webserver starts.
ENTRYPOINT ["/entrypoint.sh"]

CMD ["airflow", "api-server"]





