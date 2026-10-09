# 570. Managers with at Least 5 Direct Reports

**Difficulty:** Medium

## Problem

Write a solution to find managers with at least five direct reports.

Return the result table in any order.

## Table: `Employee`

| Column Name | Type    |
| ----------- | ------- |
| `id`        | int     |
| `name`      | varchar |
| `department`| varchar |
| `managerId` | int     |

`id` is the primary key (a column with unique values) for this table.

Each row of this table indicates the name of an employee, their department, and the ID of their manager.

If `managerId` is `null`, then the employee does not have a manager.

No employee will be the manager of themselves.

## Example 1

**Input:**

**Employee table:**

| id  | name  | department | managerId |
| --: | ----- | ---------- | --------: |
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |

**Output:**

| name |
| ---- |
| John |

**Explanation:**

John is the manager of five employees:

- Dan
- James
- Amy
- Anne
- Ron

Since John has exactly five direct reports, he is included in the result.

No other employee has at least five direct reports.