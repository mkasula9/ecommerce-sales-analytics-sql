# SQL E-Commerce Mini Analytics Project

## 📌 Project Overview

This project is an end-to-end SQL analytics mini project designed to simulate a real-world business analytics workflow using SQL Server.

The objective of this project is to go beyond writing isolated SQL queries and instead demonstrate how raw business data is:
- Loaded into a database
- Validated for quality and correctness
- Explored using an EDA mindset
- Used to answer meaningful business questions

The dataset used represents **e-commerce order-level data**, where each row corresponds to a single order line containing customer, product, region, and sales information.

This project is structured and documented in a way that reflects how analytics work is typically done in industry.


## 🛠 Tech Stack

- **Database:** SQL Server 2017  
- **Query Tool:** SQL Server Management Studio (SSMS)  
- **Version Control:** Git & GitHub  


## 📂 Project Structure

sql-ecommerce-mini-project/
│
├── data/
│   └── orders.csv
│
├── sql/
│   ├── 01_top_products.sql
│   ├── 02_monthly_growth.sql
│   ├── 03_repeat_customers.sql
│   ├── 04_region_performance.sql
│
├── results/
│   ├── top_products.csv
│   ├── monthly_growth.csv
│   ├── repeat_customers.csv
│   └── region_performance.csv
│
├── schema.sql
└── README.md
