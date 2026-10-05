# 177. Nth Highest Salary

**Difficulty:** Medium

## Problem

Write a solution to find the `nth` highest **distinct** salary from the `Employee` table.

If there are fewer than `n` distinct salaries, return `null`.

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

`n = 2`

**Output:**

| getNthHighestSalary(2) |
| ---------------------: |
| 200                    |

**Explanation:**

The distinct salaries in descending order are `300`, `200`, and `100`.

The second highest distinct salary is `200`.

## Example 2

**Input:**

**Employee table:**

| id | salary |
| -: | -----: |
| 1  | 100    |

`n = 2`

**Output:**

| getNthHighestSalary(2) |
| ---------------------- |
| null                   |

**Explanation:**

There is only one distinct salary in the table.

Since a second highest distinct salary does not exist, the result is `null`.