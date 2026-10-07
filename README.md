# My-SQL Learning Repository 📚

A comprehensive collection of MySQL SQL scripts and queries designed for learning and practicing fundamental to intermediate SQL concepts. This repository covers essential database operations, query techniques, and best practices.

---

## 📋 Overview

This repository contains practical SQL examples organized by topic, making it an excellent resource for anyone learning MySQL or refreshing their SQL skills. Each file focuses on a specific concept with clear examples and comments.

---

## 📁 Contents

### Core Database Operations
- **`Create&Select.sql`** - Database and table creation, basic INSERT and SELECT statements
  - Creating databases and tables
  - Defining table structures
  - Inserting data
  - Basic data retrieval

### Data Filtering & Conditions
- **`having_where.sql`** - Understanding WHERE and HAVING clauses
  - Filtering row data with WHERE
  - Aggregating and filtering with HAVING
  - Practical filtering examples

### Data Sorting & Organization
- **`groupby_orderby.sql`** - GROUP BY and ORDER BY operations
  - Grouping results by columns
  - Ordering results in ascending/descending order
  - Combining grouping and sorting

### String Operations
- **`string_function.sql`** - String manipulation functions
  - `LENGTH()` - Get string length
  - `UPPER()` / `LOWER()` - Change case
  - `TRIM()` / `LTRIM()` / `RTRIM()` - Remove whitespace
  - `LEFT()` / `RIGHT()` / `SUBSTRING()` - Extract portions of strings
  - `REPLACE()` - Replace text
  - `LOCATE()` - Find character position
  - `CONCAT()` - Combine strings

### Joining Tables
- **`joins.sql`** - Different types of table joins
  - **INNER JOIN** - Return matching records from both tables
  - **LEFT JOIN** - Return all records from left table + matches from right
  - **RIGHT JOIN** - Return all records from right table + matches from left
  - Self-joins for comparing data within the same table

### Advanced Queries
- **`alias_limit.sql`** - Table and column aliasing, LIMIT clause
  - Creating aliases for columns
  - Creating aliases for tables
  - Limiting result sets

- **`case_statement.sql`** - Conditional logic in queries
  - CASE WHEN statements
  - Simple and searched CASE expressions
  - Conditional result sets

---

## 🚀 Quick Start

### Prerequisites
- MySQL Server installed
- MySQL client or any MySQL IDE (MySQL Workbench, DBeaver, etc.)

### How to Use

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Atif-eng/My-Sql.git
   cd My-Sql
   ```

2. **Open your MySQL client and select a script file**

3. **Run the queries:**
   - Copy and paste queries into your MySQL client, or
   - Execute directly: `mysql -u your_username -p < filename.sql`

4. **Experiment:** Modify queries and observe how results change

---

## 📝 Learning Path

We recommend exploring these files in this order:

1. `Create&Select.sql` - Start with basic operations
2. `having_where.sql` - Learn filtering
3. `groupby_orderby.sql` - Organize results
4. `alias_limit.sql` - Simplify and limit queries
5. `case_statement.sql` - Add conditional logic
6. `string_function.sql` - Manipulate data
7. `joins.sql` - Combine multiple tables

---

## 💡 Key Concepts Covered

- ✅ Database and Table Creation
- ✅ CRUD Operations (Create, Read, Update, Delete)
- ✅ Data Filtering (WHERE, HAVING)
- ✅ Sorting and Grouping
- ✅ Table Joins (INNER, LEFT, RIGHT)
- ✅ String Functions
- ✅ Conditional Logic (CASE statements)
- ✅ Query Optimization (LIMIT, Aliases)

---

## 📖 SQL Concepts Reference

### Basic Syntax Examples

**Create a Table:**
```sql
CREATE TABLE student(
    stuID INT,
    stuName VARCHAR(45),
    age INT
);
```

**Insert Data:**
```sql
INSERT INTO student(stuID, stuName, age)
VALUES(1, "Ahmad", 23);
```

**Select with WHERE:**
```sql
SELECT * FROM student WHERE age > 20;
```

**Join Tables:**
```sql
SELECT * FROM student
INNER JOIN stu_dept
ON student.address = stu_dept.address;
```

**Group and Aggregate:**
```sql
SELECT dept, COUNT(*) as count, AVG(salary) as avg_salary
FROM stu_dept
GROUP BY dept;
```

---

## 🤝 Contributing

Feel free to contribute by:
- Adding more SQL examples
- Improving documentation
- Fixing any issues
- Suggesting new topics

---

## 📄 License

This project is licensed under the Eclipse Public License 2.0 - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Atif-eng**

---

## 📚 Additional Resources

- [MySQL Official Documentation](https://dev.mysql.com/doc/)
- [SQL Tutorial](https://www.w3schools.com/sql/)
- [MySQL Best Practices](https://dev.mysql.com/doc/refman/8.0/en/)

---

## ⭐ If you found this helpful, consider giving it a star!

Happy learning! 🎉
