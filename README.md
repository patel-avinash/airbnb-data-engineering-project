# Airbnb End-to-End Data Engineering Project

An end-to-end data engineering project built using **Snowflake, dbt, and
SQL** to transform Airbnb source data into analytics-ready datasets.

## 📌 Project Overview

This project demonstrates a modern ELT-based data engineering workflow:

**Source Data → Bronze → Silver → Gold → Analytics**

The project focuses on data ingestion, transformation, data modeling,
testing, snapshots, reusable dbt macros, and Snowflake-based analytics
engineering.

## 🏗️ Architecture

``` text
Airbnb Source Data
        │
        ▼
   Snowflake
        │
        ▼
     Bronze
        │
        ▼
     Silver
        │
        ▼
      Gold
        │
        ├── Fact Tables
        ├── Dimension Tables
        └── Ephemeral Models
        │
        ▼
 Analytics-Ready Data
```

## 🛠️ Tech Stack

-   **Cloud Data Warehouse:** Snowflake
-   **Transformation:** dbt
-   **Programming / Query Language:** SQL
-   **Version Control:** Git & GitHub
-   **Data Modeling:** Dimensional Modeling
-   **ELT:** Snowflake + dbt

## 📂 Project Structure

``` text
Airbnb/
│
├── airbnb_de/
│   ├── analyses/
│   ├── macros/
│   ├── models/
│   │   ├── bronze/
│   │   ├── silver/
│   │   ├── gold/
│   │   │   └── ephemeral/
│   │   └── sources/
│   ├── seeds/
│   ├── snapshots/
│   ├── tests/
│   └── dbt_project.yml
│
├── src/
├── README.md
├── pyproject.toml
├── uv.lock
└── .gitignore
```

## 🔄 Data Transformation Layers

### Bronze Layer

The Bronze layer contains the initial transformation of the source
Airbnb datasets and provides the foundation for downstream processing.

### Silver Layer

The Silver layer applies further cleaning and transformation to prepare
the data for business-oriented modeling.

### Gold Layer

The Gold layer contains analytics-ready models, including fact and
dimension structures used for analysis.

## 📊 Data Modeling

The project uses dimensional modeling concepts to organize the
transformed Airbnb data into analytical structures.

The Gold layer includes:

-   Fact model
-   Host-related dimension model
-   Listing-related dimension model
-   Booking-related dimension model
-   Ephemeral models used as intermediate transformations

## 🧩 dbt Features Used

-   dbt Models
-   `source()` and source definitions
-   Model dependencies
-   Materializations
-   Jinja
-   Custom macros
-   Generic/data tests
-   Snapshots
-   Incremental transformation concepts
-   Model documentation/configuration

## ❄️ Snowflake

Snowflake is used as the cloud data warehouse for storing and
transforming the Airbnb datasets.

The project applies Snowflake as the execution platform for the dbt
transformation workflow.

## 🧪 Data Quality

Data quality checks are implemented through dbt tests and SQL-based
validation.

The project includes source-level tests and model configuration to help
validate the transformed datasets.

## 📈 Project Workflow

1.  Load Airbnb source data into Snowflake.
2.  Define source datasets in dbt.
3.  Build Bronze models.
4.  Transform Bronze data into Silver models.
5.  Build Gold analytical models.
6.  Apply dimensional modeling.
7.  Add tests and snapshots.
8.  Use reusable dbt macros for transformations.
9.  Validate the final analytics-ready datasets.

## 🔐 Configuration

Snowflake connection credentials are intentionally kept outside the
public repository.

Configure your local dbt profile separately in `profiles.yml`.

> Never commit passwords, access tokens, private keys, or other
> credentials to GitHub.

## 🚀 How to Run

### 1. Clone the repository

``` bash
git clone https://github.com/patel-avinash/Airbnb.git
cd Airbnb
```

### 2. Set up the Python environment

Create/activate your Python environment according to the project's
Python configuration.

### 3. Configure dbt

Create your local dbt `profiles.yml` with your Snowflake connection
details.

### 4. Install dbt dependencies

``` bash
dbt deps
```

### 5. Check the dbt project

``` bash
dbt debug
```

### 6. Run the models

``` bash
dbt run
```

### 7. Run data quality tests

``` bash
dbt test
```

## 📚 Key Concepts Demonstrated

-   Modern ELT architecture
-   Cloud data warehousing
-   Snowflake
-   dbt transformation
-   Bronze/Silver/Gold architecture
-   Dimensional modeling
-   Fact and dimension tables
-   Data quality testing
-   Snapshots
-   Incremental processing
-   Reusable SQL/Jinja macros
-   Git-based project development

## 👨‍💻 Author

**Avinash J. Patel**

B.E. Computer Engineering\
L. J. University, Ahmedabad

-   GitHub: [patel-avinash](https://github.com/patel-avinash)
-   LinkedIn: Avinash J Patel

## ⭐ Project Purpose

This project was developed to gain practical experience in designing and
implementing an end-to-end data engineering pipeline using modern cloud
data engineering technologies.
