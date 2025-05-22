# ClassicModels SQL Assignment

This README provides a summary and instructions for completing SQL assignments using the **ClassicModels** MySQL sample database. It is based on the tasks outlined in the provided SQL Assignment and ER diagram files.

---

## 📦 About ClassicModels Database

ClassicModels is a MySQL sample database that simulates a retailer of scale model cars. It includes the following tables:

- `customers` – Customer information
- `products` – List of scale model cars
- `productlines` – Categories of product lines
- `orders` – Orders placed by customers
- `orderdetails` – Items within each order
- `payments` – Payments made by customers
- `employees` – Employee details, including reporting structure
- `offices` – Office locations

---

## 🚀 How to Import the Database

1. Download the SQL dump (e.g., `classicmodels.sql`).
2. Open the MySQL command prompt:
   ```
   mysql -u root -p
   ```
3. Import the file:
   ```
   SOURCE path/to/classicmodels.sql;
   ```

---

## 📝 Assignment Tasks Summary

1. Show all customers with a credit limit > 20,000
2. Show employees who report to VP Sales
3. List USA customers with a state set and credit limit between 100,000–200,000
4. Find employees reporting to any Sales Manager
5. Get average credit limit per country
6. Count orders per customer and date where total orders > 10
7. Find each supervisor’s name, title, and supervisee count (no join)
8. Same as above using JOIN
9. Find customers with creditLimit above the average using WITH clause
10. Rank customers by credit limit and get the 3rd highest
11. Total number of employees per office
12. Total customers served by each office
13. Total payment received by each office (show office name, state, country)
14. Total sales per office using `orderdetails`
15. Total payment pending for each office (sales - payments)
16. Show creditLimit and proportion of it within each country
17. Create a view: customer name, full address, total number of orders
18. Update country for one customer
19. Delete all payments < 20,000
20. Insert a payment manually for an existing customer

---

## 📌 Tips

- Always use proper joins based on foreign keys.
- Use `GROUP BY` for aggregations like `SUM`, `AVG`, `COUNT`.
- Use `RANK()`, `WITH`, and `CONCAT_WS` for advanced queries and views.
- Preview affected rows using `SELECT` before running `UPDATE` or `DELETE`.

---

## 🧩 Reference

- Based on [ClassicModels ER Diagram](./MySQL-Sample-Database-Diagram-PDF-A4.pdf)
- Assignment Source: [SQL Assignment](./SQL Assignment.pdf)

---