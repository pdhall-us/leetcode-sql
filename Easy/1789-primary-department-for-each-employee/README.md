# 1789. Primary Department for Each Employee

**Difficulty:** Easy

## Problem

Employees can belong to multiple departments. When an employee joins other departments, they need to decide which department is their primary department.

Note that when an employee belongs to only one department, their primary department is that department.

Write a solution to report all the employees with their primary department.

For employees who belong to only one department, report their only department.

Return the result table in any order.

## Table: `Employee`

| Column Name | Type |
| ----------- | ---- |
| `employee_id` | int |
| `department_id` | int |
| `primary_flag` | varchar |

`(employee_id, department_id)` is the primary key (a combination of columns with unique values) for this table.

`employee_id` is the ID of the employee.

`department_id` is the ID of the department to which the employee belongs.

`primary_flag` is an ENUM with values:

- `Y`
- `N`

`Y` indicates that the department is the primary department for the employee.

`N` indicates that the department is not the primary department.

Employees can belong to multiple departments, but only one department can be their primary department.

## Example 1

**Input:**

**Employee table:**

| employee_id | department_id | primary_flag |
| ----------- | ------------- | ------------ |
| 1 | 1 | N |
| 2 | 1 | Y |
| 2 | 2 | N |
| 3 | 3 | N |
| 4 | 2 | N |
| 4 | 3 | Y |
| 4 | 4 | N |

**Output:**

| employee_id | department_id |
| ----------- | ------------- |
| 1 | 1 |
| 2 | 1 |
| 3 | 3 |
| 4 | 3 |

**Explanation:**

**Employee 1:**

- Belongs only to department 1.
- Although `primary_flag = N`, department 1 is their primary department because it is their only department.

**Employee 2:**

- Belongs to departments 1 and 2.
- Department 1 has `primary_flag = Y`.
- Therefore, department 1 is the primary department.

**Employee 3:**

- Belongs only to department 3.
- Department 3 is their primary department.

**Employee 4:**

- Belongs to departments 2, 3, and 4.
- Department 3 has `primary_flag = Y`.
- Therefore, department 3 is the primary department.

## Expected Result

The output must contain:

- `employee_id`
- `department_id`

Each employee should appear exactly once with their primary department.

The result can be returned in any order.