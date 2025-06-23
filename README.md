# 🛒 Simple E-Commerce Store Database (MySQL)

This project contains a **normalized SQL schema** and **sample data** for a basic e-commerce system. It includes customers, categories, products, orders, and order items—everything you'd need to simulate online shopping behavior in a relational database.

---

## 📂 Project Structure

- `ecommerce.sql` – Creates the tables with primary and foreign key constraints.

---

## 🧱 Schema Overview

**Entities:**

- **Customers**: Stores customer details  
- **Categories**: Product category list  
- **Products**: Items available for purchase  
- **Orders**: Purchase metadata  
- **OrderItems**: Junction table for order-product mapping  

All tables follow **3rd Normal Form (3NF)** to ensure clean, relational structure.

---

## 🚀 Getting Started

### Prerequisites

- MySQL or compatible RDBMS
- SQL client (e.g., MySQL Workbench, DBeaver)

### Setup Instructions

1. Clone or download this repository.
2. Import and run `ecommerce.sql` to create tables and load sample data.

```bash
mysql -u your_username -p your_database < ecommerce.sql
