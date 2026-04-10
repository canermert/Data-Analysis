📊 Sales Performance Analysis Dashboard (Excel)
📌 Overview

This project is a simple sales data analysis dashboard built in Microsoft Excel. The goal of this project was to transform raw transactional data into a structured and analysis-ready format using Excel functions and PivotTables.

The dataset is organised into multiple related tables, and XLOOKUP was used to connect and enrich the data before performing analysis.

🧱 Dataset Structure

The project is based on four related tables:

Regions – contains regional information
Customers – contains customer details and associated regions
Products – contains product details including category and price
Orders – transactional data used as the main fact table

🔗 Data Preparation

To prepare the dataset for analysis:

XLOOKUP was used to retrieve and combine data across tables
Customer names and regions were added to the Orders table
Product details such as category and unit price were linked to each order
Revenue was calculated using quantity and unit price

This process created a flattened dataset suitable for reporting and analysis.

📊 Analysis & Visualisation

The following PivotTables and charts were created to explore the data:

Total Revenue
Total Orders
Average Order Value
Revenue by Region
Revenue by Category
Revenue by Month
Top 5 Products
Top 5 Customers

A simple interactive dashboard was built using slicers to filter data by category.

🛠️ Tools & Skills Used
Microsoft Excel
XLOOKUP (data joining across tables)
PivotTables for aggregation and analysis
Basic data modelling (relational structure in Excel)
Data cleaning and transformation
Dashboard creation and visualisation
Slicers for interactive filtering

🎯 Purpose of the Project

This project was created as a learning exercise to practice:

Working with relational datasets in Excel
Using XLOOKUP to simulate database-style joins
Building a simple analytical dashboard
Developing data analysis and reporting skills