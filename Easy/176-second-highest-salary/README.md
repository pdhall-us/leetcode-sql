# 176. Second Highest Salary

**Difficulty:** Medium

## Problem

Write a solution to find the second highest **distinct** salary from the `Employee` table.

If there is no second highest salary, return `null`.

## Table: `Employee`

| Column Name | Type |
| ----------- | ---- |
| `id`        | int  |
| `salary`    | int  |

`id` is the primary key (a column with unique values) for this table.

Each row of this table contains information about the salary of an employee.

## Example 1

**Input:**

**Employee table:**

| id | salary |
| -: | -----: |
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

**Output:**

| SecondHighestSalary |
| ------------------: |
| 200                 |

**Explanation:**

The distinct salaries are `300`, `200`, and `100`.

The second highest distinct salary is `200`.

## Example 2

**Input:**

**Employee table:**

| id | salary |
| -: | -----: |
| 1  | 100    |

**Output:**

| SecondHighestSalary |
| ------------------- |
| null                |

**Explanation:**

There is only one distinct salary in the table.

Therefore, a second highest salary does not exist, so the result is `null`.