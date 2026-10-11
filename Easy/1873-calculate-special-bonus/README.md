# 1873. Calculate Special Bonus

**Difficulty:** Easy

## Problem

Write a solution to calculate the bonus of each employee.

The bonus of an employee is **100% of their salary** if the following conditions are met:

- The employee's ID is an odd number.
- The employee's name does not start with the character `'M'`.

The bonus of an employee is `0` otherwise.

Return the result table ordered by `employee_id` in ascending order.

## Table: `Employees`

| Column Name | Type    |
| ----------- | ------- |
| employee_id | int     |
| name        | varchar |
| salary      | int     |

`employee_id` is the primary key (a column with unique values) for this table.

Each row of this table indicates the ID, name, and salary of an employee.

## Example 1

**Input:**

**Employees table:**

| employee_id | name    | salary |
| ----------- | ------- | ------ |
| 2           | Meir    | 3000   |
| 3           | Michael | 3800   |
| 7           | Addilyn | 7400   |
| 8           | Juan    | 6100   |
| 9           | Kannon  | 7700   |

**Output:**

| employee_id | bonus |
| ----------- | ----- |
| 2           | 0     |
| 3           | 0     |
| 7           | 7400  |
| 8           | 0     |
| 9           | 7700  |

**Explanation:**

**Employee 2 — Meir:**

- Employee ID is `2`, which is even.
- The employee's name starts with `'M'`.
- The conditions are not satisfied.
- Bonus = `0`.

**Employee 3 — Michael:**

- Employee ID is `3`, which is odd.
- The employee's name starts with `'M'`.
- The conditions are not satisfied.
- Bonus = `0`.

**Employee 7 — Addilyn:**

- Employee ID is `7`, which is odd.
- The employee's name does not start with `'M'`.
- Both conditions are satisfied.
- Bonus = `7400`.

**Employee 8 — Juan:**

- Employee ID is `8`, which is even.
- The conditions are not satisfied.
- Bonus = `0`.

**Employee 9 — Kannon:**

- Employee ID is `9`, which is odd.
- The employee's name does not start with `'M'`.
- Both conditions are satisfied.
- Bonus = `7700`.

## Expected Result

The output must contain:

- `employee_id`
- `bonus`

The result must satisfy the following conditions:

1. Include every employee from the `Employees` table.
2. Check whether the employee ID is odd.
3. Check whether the employee's name does not start with `'M'`.
4. Assign a bonus equal to the employee's salary if both conditions are satisfied.
5. Assign a bonus of `0` if either condition is not satisfied.
6. Return the calculated bonus in a column named `bonus`.
7. Return exactly one row for each employee.
8. Sort the result by `employee_id` in ascending order.