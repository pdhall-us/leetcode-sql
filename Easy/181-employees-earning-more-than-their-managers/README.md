# 181. Employees Earning More Than Their Managers

**Difficulty:** Easy

## Problem

Write a solution to find the employees who earn more than their managers.

Return the result table in any order.

## Table: `Employee`

| Column Name | Type    |
| ----------- | ------- |
| `id`        | int     |
| `name`      | varchar |
| `salary`    | int     |
| `managerId` | int     |

`id` is the primary key (a column with unique values) for this table.

Each row of this table contains the ID of an employee, their name, salary, and the ID of their manager.

## Example 1

**Input:**

**Employee table:**

| id | name  | salary | managerId |
| -: | ----- | -----: | --------: |
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | null      |
| 4  | Max   | 90000  | null      |

**Output:**

| Employee |
| -------- |
| Joe      |

**Explanation:**

Joe earns `70000`, while his manager Sam earns `60000`.

Since Joe earns more than his manager, Joe is included in the result.

Henry earns `80000`, while his manager Max earns `90000`, so Henry is not included.