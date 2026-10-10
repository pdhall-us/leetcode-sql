# 184. Department Highest Salary

**Difficulty:** Medium

## Problem

Write a solution to find employees who have the highest salary in each of the departments.

Return the result table in any order.

## Table: `Employee`

| Column Name  | Type    |
| ------------ | ------- |
| `id`         | int     |
| `name`       | varchar |
| `salary`     | int     |
| `departmentId` | int   |

`id` is the primary key (a column with unique values) for this table.

`departmentId` is a foreign key (reference column) of the ID from the `Department` table.

Each row of this table indicates the ID, name, and salary of an employee. It also contains the ID of their department.

## Table: `Department`

| Column Name | Type    |
| ----------- | ------- |
| `id`        | int     |
| `name`      | varchar |

`id` is the primary key (a column with unique values) for this table.

Each row of this table indicates the ID of a department and its name.

## Example 1

**Input:**

**Employee table:**

| id | name  | salary | departmentId |
| -- | ----- | ------ | ------------ |
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |

**Department table:**

| id | name  |
| -- | ----- |
| 1  | IT    |
| 2  | Sales |

**Output:**

| Department | Employee | Salary |
| ---------- | -------- | ------ |
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
| IT         | Max      | 90000  |

**Explanation:**

**IT Department:**

The employees working in the IT department are:

| Employee | Salary |
| -------- | ------ |
| Joe      | 70000  |
| Jim      | 90000  |
| Max      | 90000  |

- The highest salary in the IT department is `90000`.
- Both Jim and Max earn the highest salary.
- Therefore, both employees must be included.

**Sales Department:**

The employees working in the Sales department are:

| Employee | Salary |
| -------- | ------ |
| Henry    | 80000  |
| Sam      | 60000  |

- The highest salary in the Sales department is `80000`.
- Henry earns the highest salary.
- Therefore, Henry must be included.

## Expected Result

The output must contain:

- `Department`
- `Employee`
- `Salary`

The result must satisfy the following conditions:

1. Find the maximum salary within each department.
2. Return employees whose salary matches their department's maximum salary.
3. Include all employees who share the highest salary in the same department.
4. Display the department name instead of the department ID.
5. Return the result in any order.