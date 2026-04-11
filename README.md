# PowerBI-Hospital-Management-Dashboard
# Hospital Management Dashboard | End-to-End Power BI Project

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-Data_Analysis_Expressions-blue)

A professional, high-fidelity Hospital Management Dashboard that provides 360-degree operational insights. This project integrates a relational database (MySQL) with Power BI, featuring a custom UI/UX designed in Figma.

## 📌 Project Overview
The goal of this project was to move beyond basic data visualization and build a "software-as-a-service" (SaaS) style analytics tool. It tracks patient flow, doctor performance, financial health, and inventory levels in real-time.

### Key Functional Domains:
* **Executive Overview:** High-level KPIs and dynamic status tracking.
* **Patient Analytics:** Admission trends and surgical scheduling.
* **Finance & Revenue:** Billing totals, expense monitoring (salaries), and sales analysis.
* **Inventory & Resources:** Real-time bed occupancy and medicine stock monitoring.

## 🛠️ Tool Stack
* **Database:** MySQL (Storage and retrieval of hospital records).
* **Data Integration:** SQL (Optimized data pulling via views and queries).
* **Data Modeling:** Power BI Desktop (Star Schema).
* **Transformation:** Power Query (M Language) for ETL processes.
* **UI/UX Design:** Figma (Custom canvas backgrounds and icons).
* **Analytics:** DAX (Complex measures for dynamic percentages and time intelligence).

## 🚀 Key Technical Implementations
### 1. Advanced DAX Measures
Used the `ALL` function to create baseline totals for percentage-of-total calculations, ensuring that "Discharge Rates" remain accurate even when sliced by department.
> **Example:** `Discharge % = DIVIDE([Discharged Patients], CALCULATE([Total Patients], ALL(Status)))`

### 2. SQL Optimization
Instead of importing entire tables, I used SQL queries to pre-filter data. This reduces the processing load on Power BI and follows industry best practices for large-scale data engineering.

### 3. UI/UX & Figma Integration
Utilized Figma-designed backgrounds to ensure a professional, clean interface. This approach keeps the `.pbix` file lightweight by replacing multiple Power BI shapes with a single high-quality image layer.

### 4. Data Cleaning & ETL
* Handled inconsistent date-time formats for surgery logs.
* Converted text-based inventory values into numerical formats for mathematical analysis.
* Implemented custom sorting indexes for Month-Year trends.

## 📊 Dashboard Preview
*(Note: Replace these placeholders with your actual screenshots)*
* **Home Page:** Clean navigation hub.
* **Overview:** Real-time hospital "pulse."
* **Finance:** Revenue vs. Expenses.

## 💡 How to Use
1.  Import the provided SQL script into your **MySQL Workbench**.
2.  Open the `.pbix` file in **Power BI Desktop**.
3.  Update the **Data Source Settings** to point to your local MySQL instance.
4.  Hit **Refresh** to see the data flow!

---
Developed as part of my Data Analytics Portfolio.
