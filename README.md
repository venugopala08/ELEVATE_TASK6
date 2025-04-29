## **Task 6: Monthly Sales Performance Aggregation**

### 📌 **Objective**
To assess monthly sales performance by calculating both revenue and the number of unique orders using SQL aggregation techniques.

---

### 🗃 **Dataset**
**Table:** `online_sales`  
**Columns:**  
- `order_id`  
- `order_date`  
- `amount`  
- `product_id`

---

### 🧠 **Key SQL Concepts Used**
- `EXTRACT(YEAR FROM order_date)` and `EXTRACT(MONTH FROM order_date)` for time-based grouping  
- `SUM(amount)` to compute monthly revenue  
- `COUNT(DISTINCT order_id)` to find unique order volume  
- `GROUP BY` for monthly aggregation  
- `ORDER BY` for chronological and revenue-based sorting

---

### 🛠 **Technology Stack**
- **Database**: MySQL  
- **Language**: SQL

---

### ✅ **Expected Output**
- A monthly summary table showing:
  - Total revenue per month
  - Total number of unique orders per month  
- A second query to retrieve the **top 3 months by revenue**

---

### 📁 **Deliverables**
- `task6_monthly_sales_trend.sql`: Contains both queries
- `output_table_screenshot.png` *(optional)*: Screenshot of query result
- `README.md`: Brief overview of the task and SQL logic used

---
