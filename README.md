# CS347 Project 2: Using SQL and MySQL

This repository contains materials for CS347 Spring 2026 Project 2.

## Team
- Ella Sheridan
- Sodais Ghulam

## Project Goal
Install MySQL Community Server + MySQL Workbench, load the Sakila database, and run required SQL queries/statements for the assignment rubric.

## Repository Layout
- `sql/sakila-database.sql` - creates Sakila schema objects
- `sql/sakila-data.sql` - populates Sakila tables with data
- `sql/project2.sql` - required Project 2 SQL queries/statements
- `docs/report2.txt` - installation and SQL observations report
- `results2.pdf` - screenshots of query/statement execution results
- `CS347Project2.pdf` - assignment prompt and rubric
- `sakila-diagram.png` - Sakila ER diagram

## Setup Instructions
1. Start MySQL Server locally.
2. Run schema creation script:
   ```bash
   mysql -u root -p < sql/sakila-database.sql
   ```
3. Run data population script:
   ```bash
   mysql -u root -p < sql/sakila-data.sql
   ```
4. Run project queries/statements:
   ```bash
   mysql -u root -p < sql/project2.sql
   ```

## Quick Validation
Use these checks after setup:

```sql
USE sakila;
SELECT COUNT(*) FROM actor;
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM customer;
```

## Deliverables
Submit zip of repo on Canvas
