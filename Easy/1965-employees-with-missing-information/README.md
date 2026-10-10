# 1965. Employees With Missing Information

**Difficulty:** Easy

## Problem

Write a solution to report the IDs of all the employees with missing information.

The information of an employee is missing if:

- The employee's name is missing, or
- The employee's salary is missing.

Return the result table ordered by `employee_id` in ascending order.

## Table: `Employees`

| Column Name | Type    |
| ----------- | ------- |
| employee_id | int     |
| name        | varchar |

`employee_id` is the primary key (a column with unique values) for this table.

Each row of this table indicates the name of an employee whose ID is `employee_id`.

## Table: `Salaries`

| Column Name | Type |
| ----------- | ---- |
| employee_id | int  |
| salary      | int  |

`employee_id` is the primary key (a column with unique values) for this table.

Each row of this table indicates the salary of an employee whose ID is `employee_id`.

## Example 1

**Input:**

**Employees table:**

| employee_id | name     |
| ----------- | -------- |
| 2           | Crew     |
| 4           | Haven    |
| 5           | Kristian |

**Salaries table:**

| employee_id | salary |
| ----------- | ------ |
| 5           | 76071  |
| 1           | 22517  |
| 4           | 63539  |

**Output:**

| employee_id |
| ----------- |
| 1           |
| 2           |

**Explanation:**

**Employee 1:**

- Exists in the `Salaries` table.
- Does not exist in the `Employees` table.
- The employee's name is missing.
- Therefore, employee 1 is included.

**Employee 2:**

- Exists in the `Employees` table.
- Does not exist in the `Salaries` table.
- The employee's salary is missing.
- Therefore, employee 2 is included.

**Employee 4:**

- Exists in both tables.
- Has a name and salary.
- Therefore, employee 4 is excluded.

**Employee 5:**

- Exists in both tables.
- Has a name and salary.
- Therefore, employee 5 is excluded.

## Expected Result

The output must contain:

- `employee_id`

The result must satisfy the following conditions:

1. Find employees whose IDs exist in `Employees` but not in `Salaries`.
2. Find employees whose IDs exist in `Salaries` but not in `Employees`.
3. Include employees missing either their name information or salary information.
4. Exclude employees whose information exists in both tables.
5. Return each qualifying `employee_id` only once.
6. Sort the result by `employee_id` in ascending order.