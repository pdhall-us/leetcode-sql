# 1327. List the Products Ordered in a Period

**Difficulty:** Easy

## Problem

Write a solution to get the names of products that have at least `100` units ordered in February 2020 and their amount.

Return the result table in any order.

## Table: `Products`

| Column Name      | Type    |
| ---------------- | ------- |
| `product_id`     | int     |
| `product_name`   | varchar |
| `product_category` | varchar |

`product_id` is the primary key (a column with unique values) for this table.

This table contains information about the products in the company.

## Table: `Orders`

| Column Name  | Type |
| ------------ | ---- |
| `product_id` | int  |
| `order_date` | date |
| `unit`       | int  |

This table may have duplicate rows.

`product_id` is a foreign key (reference column) to the `Products` table.

`unit` is the number of products ordered on the date `order_date`.

## Example 1

**Input:**

**Products table:**

| product_id | product_name | product_category |
| ---------- | ------------ | ---------------- |
| 1          | Leetcode Solutions | Book |
| 2          | Jewels of Stringology | Book |
| 3          | HP | Laptop |
| 4          | Lenovo | Laptop |
| 5          | Leetcode Kit | T-shirt |

**Orders table:**

| product_id | order_date | unit |
| ---------- | ---------- | ---- |
| 1 | 2020-02-05 | 60 |
| 1 | 2020-02-10 | 70 |
| 2 | 2020-01-18 | 30 |
| 2 | 2020-02-11 | 80 |
| 3 | 2020-02-17 | 2 |
| 3 | 2020-02-24 | 3 |
| 4 | 2020-03-01 | 20 |
| 4 | 2020-03-04 | 30 |
| 4 | 2020-03-04 | 60 |
| 5 | 2020-02-25 | 50 |
| 5 | 2020-02-27 | 50 |
| 5 | 2020-03-01 | 50 |

**Output:**

| product_name | unit |
| ------------ | ---- |
| Leetcode Solutions | 130 |
| Leetcode Kit | 100 |

**Explanation:**

**Leetcode Solutions:**

- 60 units were ordered on February 5, 2020.
- 70 units were ordered on February 10, 2020.
- Total units ordered in February = `130`.
- Since `130 >= 100`, this product is included.

**Jewels of Stringology:**

- 80 units were ordered in February.
- The January order is excluded.
- Since `80 < 100`, this product is excluded.

**HP:**

- 2 units were ordered on February 17.
- 3 units were ordered on February 24.
- Total units ordered = `5`.
- Since `5 < 100`, this product is excluded.

**Lenovo:**

- All orders were placed in March 2020.
- No units were ordered in February.
- This product is excluded.

**Leetcode Kit:**

- 50 units were ordered on February 25.
- 50 units were ordered on February 27.
- Total units ordered in February = `100`.
- Since `100 >= 100`, this product is included.

## Expected Result

The output must contain:

- `product_name`
- `unit`

The `unit` column represents the total number of units ordered for each product during February 2020.

Only products with at least `100` units ordered during February 2020 should appear in the result.

Orders outside February 2020 must not be included.

Return the result in any order.