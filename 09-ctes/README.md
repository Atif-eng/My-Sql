# Common Table Expressions (CTEs)

This folder contains examples of Common Table Expressions (CTEs) in MySQL.

A CTE is a named temporary result set that you define with a `WITH` clause and use within a single SQL statement. CTEs can make queries easier to read and help break complex queries into smaller steps.

## File

- `CTEs.sql` — examples using a CTE for grouped salary statistics and multiple CTEs for filtering and joining student and department data.

## Suggested order

1. Select the `atif` database and review the available tables.
2. Run the first CTE query to calculate salary statistics by age.
3. Compare the subquery example with the CTE approach.
4. Run the final query to see how multiple CTEs can be joined.

## Requirements

These examples use the `student` and `stu_dept` tables in the `atif` database. CTEs are supported in MySQL 8.0 and later.
