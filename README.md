# DATA 430 ETL Pipeline

This project implements an ETL pipeline using Apache NiFi and PostgreSQL running in Docker.

Pipeline stages:
ListFile → FetchFile → RouteOnAttribute → ConvertRecord → PutDatabaseRecord

The pipeline loads CSV datasets into PostgreSQL tables and archives processed files.

Technologies used:
Apache NiFi
PostgreSQL
Docker
Python Faker