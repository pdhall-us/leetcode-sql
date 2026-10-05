# 1731. The Number of Employees Which Report to Each Employee

**Difficulty:** Medium

## Problem

For each manager, write a solution to report:

- `employee_id`
- `name`
- The number of employees who report directly to them as `reports_count`
- The average age of those employees, rounded to the nearest integer, as `average_age`

Return the result table ordered by `employee_id`.

## Table: `Employees`

| Column Name   | Type    |
| ------------- | ------- |
| `employee_id` | int     |
| `name`        | varchar |
| `reports_to`  | int     |
| `age`         | int     |

`employee_id` is the primary key (a column with unique values) for this table.

This table contains information about employees and the IDs of the managers they report to.

Some employees do not report to anyone, so their `reports_to` value is `null`.

## Example 1

**Input:**

**Employees table:**

| employee_id | name    | reports_to | age |
| ----------: | ------- | ---------: | --: |
| 9           | Hercy   | null       | 43  |
| 6           | Alice   | 9          | 41  |
| 4           | Bob     | 9          | 36  |
| 2           | Winston | null       | 37  |

**Output:**

| employee_id | name  | reports_count | average_age |
| ----------: | ----- | ------------: | ----------: |
| 9           | Hercy | 2             | 39          |

**Explanation:**

Hercy has two employees who report directly to him: Alice and Bob.

Their ages are `41` and `36`.

The number of direct reports is `2`, and their average age is:

`(41 + 36) / 2 = 38.5`

Rounded to the nearest integer, the average age is `39`.