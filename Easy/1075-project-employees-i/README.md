# 1075. Project Employees I

**Difficulty:** Easy

## Problem

Write a solution to report the average experience years of all the employees for each project, rounded to 2 digits.

Return the result table in any order.

## Table: `Project`

| Column Name   | Type |
| ------------- | ---- |
| `project_id`  | int  |
| `employee_id` | int  |

`(project_id, employee_id)` is the primary key (a combination of columns with unique values) of this table.

`employee_id` is a foreign key (reference column) to the `Employee` table.

Each row of this table indicates that the employee with `employee_id` is working on the project with `project_id`.

## Table: `Employee`

| Column Name       | Type    |
| ----------------- | ------- |
| `employee_id`     | int     |
| `name`            | varchar |
| `experience_years`| int     |

`employee_id` is the primary key (a column with unique values) of this table.

Each row of this table contains information about one employee.

## Example 1

**Input:**

**Project table:**

| project_id | employee_id |
| ---------- | ----------- |
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |

**Employee table:**

| employee_id | name   | experience_years |
| ----------- | ------ | ---------------- |
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

**Output:**

| project_id | average_years |
| ---------- | ------------- |
| 1          | 2.00          |
| 2          | 2.50          |

**Explanation:**

**Project 1:**

- Khaled has 3 years of experience.
- Ali has 2 years of experience.
- John has 1 year of experience.
- Average experience = `(3 + 2 + 1) / 3 = 2.00`

**Project 2:**

- Khaled has 3 years of experience.
- Doe has 2 years of experience.
- Average experience = `(3 + 2) / 2 = 2.50`

The average experience is calculated as:

**Average Experience = Total Experience Years / Number of Employees**

The result is rounded to 2 decimal places.