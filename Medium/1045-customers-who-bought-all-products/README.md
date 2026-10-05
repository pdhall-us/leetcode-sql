# 1045. Customers Who Bought All Products

**Difficulty:** Medium

## Problem

Write a solution to report the customer IDs from the `Customer` table that bought **all the products** in the `Product` table.

Return the result table in any order.

## Table: `Customer`

| Column Name  | Type |
| ------------ | ---- |
| `customer_id` | int |
| `product_key` | int |

This table may contain duplicate rows.

`customer_id` is not `NULL`.

`product_key` is a foreign key referencing the `Product` table.

## Table: `Product`

| Column Name   | Type |
| ------------- | ---- |
| `product_key` | int  |

`product_key` is the primary key (a column with unique values) for this table.

## Example 1

**Input:**

**Customer table:**

| customer_id | product_key |
| ----------: | ----------: |
| 1           | 5           |
| 2           | 6           |
| 3           | 5           |
| 3           | 6           |
| 1           | 6           |

**Product table:**

| product_key |
| ----------: |
| 5           |
| 6           |

**Output:**

| customer_id |
| ----------: |
| 1           |
| 3           |

**Explanation:**

The `Product` table contains two products: `5` and `6`.

- Customer `1` bought both products `5` and `6`.
- Customer `2` bought only product `6`.
- Customer `3` bought both products `5` and `6`.

Therefore, customers `1` and `3` bought all the available products.