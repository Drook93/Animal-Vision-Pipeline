# Set postgres configuration
FROM postgres:13
ENV POSTGRES_USER=airflow
ENV POSTGRES_PASSWORD=airflow
ENV POSTGRES_DB=airflow

# Expose port for postgres
EXPOSE 5432

# Configure PostgreSQL to use our custom configuration file
COPY postgres.conf /etc/postgresql/postgresql.conf
# Starts PostgreSQL server use your custom config file reads its settings from /etc/postgresql/postgresql.conf instead of the default location.
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgres.conf"]