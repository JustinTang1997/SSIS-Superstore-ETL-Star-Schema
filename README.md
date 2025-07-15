# SSIS ETL Pipeline and Dimensional Modeling with Superstore Dataset

This project demonstrates a complete ETL pipeline and star schema data warehouse design using the Superstore dataset, built with SQL Server Integration Services (SSIS). It covers the full process from data extraction to dimension and fact table loading using best practices in dimensional modeling.

---

## 📦 Project Overview

- **Dataset**: Superstore (CSV format)
- **ETL Tool**: SQL Server Integration Services (SSIS)
- **Database**: SQL Server
- **Model**: Star Schema (Kimball dimensional modeling)

The objective was to simulate a real-world ETL process and create a structured data warehouse that enables business reporting.

---

## 🛠 Features & Highlights

✅ Extracted raw Superstore data from CSV  
✅ Created staging tables for data validation and profiling  
✅ Designed and loaded the following dimension tables:
- `Dim_Date`
- `Dim_Customer`
- `Dim_Product`
- `Dim_Region`

✅ Built `Fact_Sales` with surrogate keys using SSIS Lookup transformations  
✅ Handled common ETL issues: data type conversion, truncation, and lookup failures  
✅ Used clean naming conventions and reusable components  

---

## 📁 Project Structure
