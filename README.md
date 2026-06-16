# 🚀 End-to-End Azure Data Engineering Pipeline using AdventureWorks Dataset

## 📖 Project Overview

This project demonstrates the implementation of an end-to-end Azure Data Engineering pipeline using the AdventureWorks dataset. The solution follows the Medallion Architecture (Bronze, Silver, Gold) to ingest, transform, curate, and prepare data for analytical workloads.

The pipeline dynamically ingests multiple CSV files from GitHub using Azure Data Factory, stores raw data in Azure Data Lake Storage Gen2, transforms the data using Azure Databricks and PySpark, creates SQL schemas and views using Azure Synapse Analytics, and stores analytics-ready Parquet files in the Gold layer. Finally, Power BI is connected to the Azure Synapse Serverless SQL endpoint for data consumption.

---

# 🏗️ Solution Architecture

The following architecture illustrates the complete end-to-end data engineering pipeline implemented in this project.

![Architecture](Architecture/architecture.drawio.png)

## ✨ Project Highlights

- End-to-End Azure Data Engineering Pipeline
- Dynamic Metadata-Driven Data Ingestion
- Medallion Architecture (Bronze → Silver → Gold)
- PySpark-based Data Transformation
- Azure Synapse Serverless SQL
- Parquet Data Storage
- Power BI Integration

# 🛠️ Technologies Used

| Category | Technology |
|----------|------------|
| Cloud Platform | Microsoft Azure |
| Data Ingestion | Azure Data Factory |
| Storage | Azure Data Lake Storage Gen2 |
| Data Processing | Azure Databricks |
| Programming Language | PySpark |
| Analytics | Azure Synapse Analytics (Serverless SQL) |
| Visualization | Power BI |
| Version Control | Git & GitHub |
| Dataset | AdventureWorks (Kaggle) |

# 📂 Project Workflow

## 1️⃣ Source Data

- Downloaded the AdventureWorks dataset from Kaggle.
- Uploaded the CSV files to a GitHub repository.
- Created a metadata JSON file containing GitHub file paths for dynamic ingestion.

## 2️⃣ Dynamic Data Ingestion using Azure Data Factory

Developed a dynamic Azure Data Factory pipeline to ingest multiple CSV files from GitHub into Azure Data Lake Storage Gen2.

### Pipeline Components

- Lookup Activity
- ForEach Activity
- Dynamic Copy Activity
- HTTP Linked Service
- Metadata JSON file

The Lookup Activity reads the metadata JSON file, the ForEach Activity iterates through each CSV file dynamically, and the Copy Activity loads the files into the Bronze layer.

## 3️⃣ Bronze Layer

The raw CSV files are stored in the Bronze container of Azure Data Lake Storage Gen2 without any transformations.

## 4️⃣ Data Transformation using Azure Databricks

Azure Databricks was connected to Azure Data Lake Storage Gen2.

Using PySpark, the following operations were performed:

- Read data from the Bronze layer
- Data cleaning
- Data transformation
- Added derived columns
- Wrote transformed data to the Silver layer

## 5️⃣ Silver Layer

The transformed CSV files are stored in the Silver container of Azure Data Lake Storage Gen2.

## 6️⃣ Azure Synapse Analytics

Azure Synapse Analytics was used to:

- Connect to the Silver layer
- Create SQL Schema
- Create SQL Views
- Process transformed data
- Write analytics-ready Parquet files to the Gold layer

## 7️⃣ Gold Layer

The Gold layer stores optimized Parquet files for analytical workloads.

## 8️⃣ Power BI

Power BI was connected to the Azure Synapse Serverless SQL Endpoint to validate connectivity with the curated Gold layer.

> **Note:** The primary focus of this project is Azure Data Engineering; therefore, no Power BI dashboards or reports were developed.

# 📁 Repository Structure

```text
AdventureWorks-Azure-Data-Engineering/
│
├── ADF/
│   ├── screenshots/
│   ├── lookup_files/
│   └── README.md
│
├── Databricks/
│   ├── notebooks/
│   ├── screenshots/
│   └── README.md
│
├── Synapse/
│   ├── SQL Scripts/
│   ├── screenshots/
│   └── README.md
│
├── ADLS/
│   ├── screenshots/
│   └── README.md
│
├── datasets/
│
├── architecture/
│   ├── architecture.drawio
│   └── architecture.png
│
└── README.md
```


# 📸 Project Screenshots

## Azure Data Factory

![ADF Pipeline](ADF/screenshots/01_dynamic_pipeline_overview.png)

- Dynamic Pipeline
- Lookup Activity
- ForEach Activity
- Dynamic Copy Activity
- Successful Pipeline Execution

## Azure Databricks

- Databricks Workspace
- PySpark Notebook
- Cluster Configuration

## Azure Synapse Analytics

- SQL Scripts
- Schema Creation
- Views
- Gold Layer Processing

## Azure Data Lake Storage Gen2

- Bronze Layer
- Silver Layer
- Gold Layer

# ⭐ Key Features

- End-to-End Azure Data Engineering Pipeline
- Medallion Architecture (Bronze → Silver → Gold)
- Dynamic Azure Data Factory Pipeline
- Metadata-Driven Ingestion
- Lookup Activity
- ForEach Activity
- Dynamic Copy Activity
- Azure Data Lake Storage Gen2
- Azure Databricks with PySpark
- Azure Synapse Analytics (Serverless SQL)
- SQL Schema & Views
- Parquet File Generation
- Power BI Connectivity
- GitHub as Data Source

---

# 👨‍💻 Author

**Sai Deepak**

- GitHub: https://github.com/SaiDeepak11081
- LinkedIn: https://www.linkedin.com/in/sai-deepak-1a7a54205/
