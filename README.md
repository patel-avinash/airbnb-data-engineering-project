# Airbnb End-to-End Data Engineering Project

An end-to-end data engineering project using **Azure Blob Storage, Snowflake, dbt, and SQL** to move Airbnb source data from cloud storage into a Snowflake data warehouse and transform it into analytics-ready datasets.

## 📌 Project Overview

The project follows this data flow:

**Airbnb CSV Files → Azure Blob Storage → Snowflake External Stage → Bronze → Silver → Gold → Analytics-ready Data**

Azure Blob Storage is used as the raw file landing area, while Snowflake is used as the cloud data warehouse. dbt is used for transformations and data modeling.

## 🏗️ Architecture

```text
Airbnb CSV Files
       │
       ▼
Azure Blob Storage
       │
       │ Azure RBAC / Service Principal
       ▼
Snowflake Storage Integration
       │
       ▼
External Stage
       │
       ├── bookings.csv
       ├── hosts.csv
       └── listings.csv
       │
       ▼
Snowflake
       │
       ├── Bronze
       ├── Silver
       └── Gold
              │
              ├── Fact Models
              ├── Dimension Models
              └── Ephemeral Models
              │
              ▼
       Analytics-ready Data
```

## 🛠️ Tech Stack

- **Cloud Storage:** Azure Blob Storage
- **Cloud Data Warehouse:** Snowflake
- **Transformation:** dbt
- **Query Language:** SQL
- **Data Modeling:** Dimensional Modeling
- **Version Control:** Git & GitHub
- **ELT:** Azure Blob Storage + Snowflake + dbt

## ☁️ Azure Blob Storage → Snowflake

The raw Airbnb CSV files are stored in an Azure Blob Storage container.

The project uses:

- Azure Storage Account
- Azure Blob Container
- Microsoft Entra ID
- Azure RBAC
- Snowflake Storage Integration
- Snowflake External Stage

The Snowflake application is granted the required **Storage Blob Data Contributor** role so Snowflake can access the Azure container.

The external stage provides Snowflake with a named reference to the Azure storage location.

## 📂 Source Data

The project uses three Airbnb CSV files:

- `bookings.csv`
- `hosts.csv`
- `listings.csv`

The files are stored in the Azure Blob container and accessed from Snowflake through the external stage.

## ❄️ Snowflake Setup

The Snowflake side includes:

- Database
- Staging schema
- Target tables
- CSV file format
- Azure Storage Integration
- External Stage

Example verification:

```sql
LIST @airbnb_stage;
```

This verifies that Snowflake can authenticate to Azure and discover the source files.

## 🔄 Data Transformation Layers

### Bronze Layer

The Bronze layer performs the initial transformation of the Airbnb source data and provides the foundation for downstream processing.

### Silver Layer

The Silver layer applies further cleaning and transformation to prepare the data for business-oriented modeling.

### Gold Layer

The Gold layer contains analytics-ready models, including fact and dimension structures.

## 📊 Data Modeling

The Gold layer uses dimensional modeling concepts and contains analytical fact and dimension structures for Airbnb data.

The project also uses ephemeral dbt models as intermediate transformations.

## 🧩 dbt Features Used

- dbt Models
- `source()` and source definitions
- Model dependencies
- Materializations
- Jinja
- Custom macros
- dbt tests
- Snapshots
- Incremental transformation concepts
- Model configuration
- Git-based development

## 🧪 Data Quality

Data quality checks are implemented through dbt tests and SQL-based validation.

Source-level tests and model configuration are used to validate the transformed datasets.

## 🔄 Project Workflow

1. Store Airbnb CSV files in Azure Blob Storage.
2. Configure Azure identity and RBAC permissions.
3. Create Snowflake database, schema, tables, and CSV file format.
4. Configure a Snowflake Storage Integration for Azure.
5. Create an external stage pointing to the Azure Blob container.
6. Verify source files using `LIST @airbnb_stage`.
7. Load and transform the source data in Snowflake.
8. Build Bronze, Silver, and Gold dbt models.
9. Apply dimensional modeling.
10. Add tests, snapshots, macros, and incremental transformations.
11. Produce analytics-ready datasets.

## 🔐 Configuration

Snowflake connection credentials are intentionally kept outside the public repository.

Create and configure your local dbt `profiles.yml` separately.

> Never commit passwords, access tokens, private keys, or other credentials to GitHub.

## 🚀 How to Run

### 1. Clone the repository

```bash
git clone https://github.com/patel-avinash/Airbnb.git
cd Airbnb
```

### 2. Configure dbt

Create your local `profiles.yml` with the required Snowflake connection details.

### 3. Install dbt dependencies

```bash
dbt deps
```

### 4. Check the connection

```bash
dbt debug
```

### 5. Run the models

```bash
dbt run
```

### 6. Run tests

```bash
dbt test
```

## 📚 Key Concepts Demonstrated

- Azure Blob Storage
- Azure Entra ID and RBAC
- Snowflake Storage Integration
- Snowflake External Stage
- Cloud data ingestion
- ELT architecture
- Bronze/Silver/Gold architecture
- Dimensional modeling
- Fact and dimension tables
- dbt transformations
- Data quality testing
- Snapshots
- Incremental processing
- Reusable SQL/Jinja macros
- Git-based project development

## 👨‍💻 Author

**Avinash J. Patel**

B.E. Computer Engineering  
L. J. University, Ahmedabad

- GitHub: https://github.com/patel-avinash
- LinkedIn: Avinash J Patel

## ⭐ Project Purpose

This project was developed to gain practical experience in building an end-to-end cloud data engineering pipeline using Azure Blob Storage, Snowflake, dbt, SQL, and dimensional modeling.
