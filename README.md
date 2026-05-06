# 🏆 Sports Merchandise Database

A relational database project simulating an online sports merchandise store, built with **MySQL** and visualized using **Tableau**.

---

## 📌 Project Overview

This project models the backend of a sports merchandise e-commerce platform. It tracks customers, orders, products, payments, and shipping addresses across multiple sports categories including NBA, NFL, MLB, NHL, Soccer, and College sports.

---

## 🗄️ Database Schema

The database consists of **8 tables**:

| Table | Description |
|---|---|
| `customers` | Customer personal info (name, email, phone) |
| `addresses` | Shipping addresses linked to customers |
| `category` | Product categories (NBA, NFL, MLB, etc.) |
| `products` | Product catalog with prices and stock levels |
| `orders` | Orders placed by customers |
| `orderdetails` | Line items within each order |
| `payments` | Payment records linked to orders |

### Entity Relationships

- A **customer** can have multiple **addresses** and **orders**
- An **order** contains multiple **products** via **orderdetails**
- Each **order** has a corresponding **payment**
- Each **product** belongs to a **category**

---

## 📦 Product Categories

| ID | Category | Description |
|---|---|---|
| 1 | NBA | Basketball merchandise |
| 2 | NFL | Football merchandise |
| 3 | MLB | Baseball merchandise |
| 4 | NHL | Hockey merchandise |
| 5 | Soccer | Soccer merchandise |
| 6 | College | College sports merchandise |
| 7 | Accessories | Sports accessories |
| 8 | Jerseys | Team jerseys |
| 9 | Equipment | Sports equipment and gear |
| 10 | Caps | Team hats and caps |

---

## 📊 Tableau Visualizations

The Tableau workbook (`.twbx`) includes dashboards analyzing:

- Sales by product category
- Revenue trends over time
- Top-selling products
- Payment method breakdown
- Customer order distribution by location

---

## 🚀 How to Set Up the Database

1. Install [MySQL](https://dev.mysql.com/downloads/)
2. Open MySQL Workbench or your preferred MySQL client
3. Run the SQL file to create and populate the database:

```sql
SOURCE SQL_Sports_Merchandise.sql;
```

Or via the command line:

```bash
mysql -u your_username -p < SQL_Sports_Merchandise.sql
```

4. Open Tableau and connect to the MySQL database, or open the `.twbx` packaged workbook directly.

---

## 🛠️ Tools Used

- **MySQL 8.0** — Database management
- **MySQL Workbench** — Schema design and querying
- **Tableau** — Data visualization and dashboards

---

## 📁 Repository Structure

```
sports-merchandise-db/
├── README.md
├── SQL_Sports_Merchandise.sql   # Full database dump (schema + data)
└── tableau/
    └── Sports_Merchandise.twbx  # Tableau packaged workbook
```

---

## 👤 Author

Created as a final school project.
