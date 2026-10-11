# 1179. Reformat Department Table

**Difficulty:** Easy

## Problem

Reformat the table such that there is a department ID column and a revenue column for each month.

Return the result table in any order.

## Table: `Department`

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| revenue     | int     |
| month       | varchar |

In SQL, `(id, month)` is the primary key (a combination of columns with unique values) for this table.

The table has information about the revenue of each department per month.

The `month` column has values in:

`["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]`

## Example 1

**Input:**

**Department table:**

| id | revenue | month |
| -- | ------- | ----- |
| 1  | 8000    | Jan   |
| 2  | 9000    | Jan   |
| 3  | 10000   | Feb   |
| 1  | 7000    | Feb   |
| 1  | 6000    | Mar   |

**Output:**

| id | Jan_Revenue | Feb_Revenue | Mar_Revenue | Apr_Revenue | May_Revenue | Jun_Revenue | Jul_Revenue | Aug_Revenue | Sep_Revenue | Oct_Revenue | Nov_Revenue | Dec_Revenue |
| -- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| 1  | 8000        | 7000        | 6000        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        |
| 2  | 9000        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        |
| 3  | NULL        | 10000       | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        | NULL        |

**Explanation:**

**Department 1:**

- January revenue is `8000`.
- February revenue is `7000`.
- March revenue is `6000`.
- No revenue records exist for the remaining months.
- Therefore, those months contain `NULL`.

**Department 2:**

- January revenue is `9000`.
- No revenue records exist for February through December.
- Therefore, those months contain `NULL`.

**Department 3:**

- February revenue is `10000`.
- No revenue records exist for the remaining months.
- Therefore, those months contain `NULL`.

## Expected Result

The output must contain:

- `id`
- `Jan_Revenue`
- `Feb_Revenue`
- `Mar_Revenue`
- `Apr_Revenue`
- `May_Revenue`
- `Jun_Revenue`
- `Jul_Revenue`
- `Aug_Revenue`
- `Sep_Revenue`
- `Oct_Revenue`
- `Nov_Revenue`
- `Dec_Revenue`

The result must satisfy the following conditions:

1. Return exactly one row for each department ID.
2. Convert the month values into separate revenue columns.
3. Include all twelve months from January through December.
4. Display the corresponding revenue for each department and month.
5. Return `NULL` when a department has no revenue record for a particular month.
6. Preserve the original revenue values without modification.
7. Return the result in any order.