# 1084. Sales Analysis III

**Difficulty:** Easy

## Problem

Write a solution to report the products that were **only sold in the first quarter of 2019**. That is, between `2019-01-01` and `2019-03-31`, inclusive.

Return the result table in any order.

## Table: `Product`

| Column Name  | Type    |
| ------------ | ------- |
| product_id   | int     |
| product_name | varchar |
| unit_price   | int     |

`product_id` is the primary key (a column with unique values) for this table.

Each row of this table indicates the name and price of each product.

## Table: `Sales`

| Column Name | Type |
| ----------- | ---- |
| seller_id   | int  |
| product_id  | int  |
| buyer_id    | int  |
| sale_date   | date |
| quantity    | int  |
| price       | int  |

This table can have duplicate rows.

`product_id` is a foreign key (reference column) to the `Product` table.

Each row of this table contains information about one sale.

## Example 1

**Input:**

**Product table:**

| product_id | product_name | unit_price |
| ---------- | ------------ | ---------- |
| 1          | S8           | 1000       |
| 2          | G4           | 800        |
| 3          | iPhone       | 1400       |

**Sales table:**

| seller_id | product_id | buyer_id | sale_date  | quantity | price |
| --------- | ---------- | -------- | ---------- | -------- | ----- |
| 1         | 1          | 1        | 2019-01-21 | 2        | 2000  |
| 1         | 2          | 2        | 2019-02-17 | 1        | 800   |
| 2         | 2          | 3        | 2019-06-02 | 1        | 800   |
| 3         | 3          | 4        | 2019-05-13 | 2        | 2800  |

**Output:**

| product_id | product_name |
| ---------- | ------------ |
| 1          | S8           |

**Explanation:**

**Product 1 (S8):**

- Sold on `2019-01-21`.
- This date falls within the first quarter of 2019.
- There are no sales outside the specified period.
- Therefore, product 1 is included.

**Product 2 (G4):**

- Sold on `2019-02-17`, which is within the first quarter.
- Also sold on `2019-06-02`, which is outside the first quarter.
- Therefore, product 2 is excluded.

**Product 3 (iPhone):**

- Sold on `2019-05-13`.
- This date falls outside the first quarter of 2019.
- Therefore, product 3 is excluded.

## Expected Result

The output must contain:

- `product_id`
- `product_name`

The result must satisfy the following conditions:

1. Identify products with sales between `2019-01-01` and `2019-03-31`, inclusive.
2. Include only products whose every sale occurred within this date range.
3. Exclude products that have at least one sale outside the specified period.
4. Exclude products that have never been sold.
5. Return each qualifying product only once.
6. Return the result in any order.