# 1378. Replace Employee ID With The Unique Identifier

**Difficulty:** Easy

## Problem

Write a solution to show the unique ID of each user.

If a user does not have a unique ID, replace it with `null`.

Return the result table in any order.

## Table: `Employees`

| Column Name | Type    |
| ----------- | ------- |
| `id`        | int     |
| `name`      | varchar |

`id` is the primary key (a column with unique values) for this table.

Each row of this table contains the ID and the name of an employee in a company.

## Table: `EmployeeUNI`

| Column Name | Type |
| ----------- | ---- |
| `id`        | int  |
| `unique_id` | int  |

`(id, unique_id)` is the primary key (a combination of columns with unique values) for this table.

Each row of this table contains the ID and the corresponding unique ID of an employee.

## Example 1

**Input:**

**Employees table:**

| id | name     |
| -: | -------- |
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |

**EmployeeUNI table:**

| id | unique_id |
| -: | --------: |
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |

**Output:**

| unique_id | name     |
| --------: | -------- |
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |

**Explanation:**

Alice and Bob do not have a unique ID, so their `unique_id` is shown as `null`.

Meir has a unique ID of `2`.

Winston has a unique ID of `3`.

Jonathan has a unique ID of `1`.