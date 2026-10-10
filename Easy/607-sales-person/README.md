# 607. Sales Person

**Difficulty:** Easy

## Problem

Write a solution to find the names of all the salespersons who did not have any orders related to the company with the name **"RED"**.

Return the result table in any order.

## Table: `SalesPerson`

| Column Name     | Type    |
| --------------- | ------- |
| sales_id        | int     |
| name            | varchar |
| salary          | int     |
| commission_rate | int     |
| hire_date       | date    |

`sales_id` is the primary key (a column with unique values) for this table.

Each row of this table indicates the name and ID of a salesperson alongside their salary, commission rate, and hire date.

## Table: `Company`

| Column Name | Type    |
| ----------- | ------- |
| com_id      | int     |
| name        | varchar |
| city        | varchar |

`com_id` is the primary key (a column with unique values) for this table.

Each row of this table indicates the name and ID of a company and the city in which the company is located.

## Table: `Orders`

| Column Name | Type |
| ----------- | ---- |
| order_id    | int  |
| order_date  | date |
| com_id      | int  |
| sales_id    | int  |
| amount      | int  |

`order_id` is the primary key (a column with unique values) for this table.

`com_id` is a foreign key (reference column) to `com_id` from the `Company` table.

`sales_id` is a foreign key (reference column) to `sales_id` from the `SalesPerson` table.

Each row of this table contains information about one order, including the company ID, salesperson ID, order date, and amount.

## Example 1

**Input:**

**SalesPerson table:**

| sales_id | name | salary | commission_rate | hire_date  |
| -------- | ---- | ------ | --------------- | ---------- |
| 1        | John | 100000 | 6               | 4/1/2006   |
| 2        | Amy  | 12000  | 5               | 5/1/2010   |
| 3        | Mark | 65000  | 12              | 12/25/2008 |
| 4        | Pam  | 25000  | 25              | 1/1/2005   |
| 5        | Alex | 5000   | 10              | 2/3/2007   |

**Company table:**

| com_id | name   | city     |
| ------ | ------ | -------- |
| 1      | RED    | Boston   |
| 2      | ORANGE | New York |
| 3      | YELLOW | Boston   |
| 4      | GREEN  | Austin   |

**Orders table:**

| order_id | order_date | com_id | sales_id | amount |
| -------- | ---------- | ------ | -------- | ------ |
| 1        | 1/1/2014   | 3      | 4        | 10000  |
| 2        | 2/1/2014   | 4      | 5        | 5000   |
| 3        | 3/1/2014   | 1      | 1        | 50000  |
| 4        | 4/1/2014   | 1      | 4        | 25000  |

**Output:**

| name |
| ---- |
| Amy  |
| Mark |
| Alex |

**Explanation:**

**John:**

- Has an order associated with company `RED`.
- Therefore, John is excluded.

**Amy:**

- Has no orders associated with company `RED`.
- Therefore, Amy is included.

**Mark:**

- Has no orders associated with company `RED`.
- Therefore, Mark is included.

**Pam:**

- Has orders associated with companies `YELLOW` and `RED`.
- Since Pam has an order associated with `RED`, she is excluded.

**Alex:**

- Has an order associated with company `GREEN`.
- Has no orders associated with company `RED`.
- Therefore, Alex is included.

## Expected Result

The output must contain:

- `name`

The result must satisfy the following conditions:

1. Identify the company whose name is `RED`.
2. Find salespersons who have placed orders associated with `RED`.
3. Exclude those salespersons from the result.
4. Include salespersons who have orders only with other companies.
5. Include salespersons who have not placed any orders.
6. Return the names of all qualifying salespersons.
7. Return the result in any order.