# Window Functions (08-window-functions)

This folder contains examples and explanations of SQL window functions (analytic functions) in MySQL.

Window functions let you perform calculations across a set of table rows that are related to the current row. They are useful for rankings, running totals, moving averages, lead/lag comparisons, and other analytic tasks.

Files:
- `window_functions.sql` — ready-to-run example scripts with sample data and multiple window-function queries.
- `README.md` — this file (overview and suggested order).

Suggested order:
1. Read `window_functions.sql` to see examples.
2. Run the sample `employees` data creation section.
3. Execute each query and modify the PARTITION / ORDER BY clauses to explore different results.

Notes:
- These examples were written for MySQL 8+ (window functions require MySQL 8.0 or later).
