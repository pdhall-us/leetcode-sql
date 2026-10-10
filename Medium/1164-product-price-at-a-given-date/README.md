# 1164. Product Price at a Given Date

**Difficulty:** Medium

## Problem

Write a solution to find the prices of all products on `2019-08-16`.

Assume the price of all products before any change is `10`.

Return the result table in any order.

## Table: `Products`

| Column Name   | Type |
| ------------- | ---- |
| `product_id`  | int  |
| `new_price`   | int  |
| `change_date` | date |

`(product_id, change_date)` is the primary key (a combination of columns with unique values) of this table.

Each row of this table indicates that the price of a product was changed to `new_price` on `change_date`.

## Example 1

**Input:**

**Products table:**

| product_id | new_price | change_date |
| ---------- | --------- | ----------- |
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |

**Output:**

| product_id | price |
| ---------- | ----- |
| 2          | 50    |
| 1          | 35    |
| 3          | 10    |

**Explanation:**

**Product 1:**

- On `2019-08-14`, the price changed to `20`.
- On `2019-08-15`, the price changed to `30`.
- On `2019-08-16`, the price changed to `35`.
- Therefore, the price on `2019-08-16` is `35`.

**Product 2:**

- On `2019-08-14`, the price changed to `50`.
- The next price change happened on `2019-08-17`.
- Therefore, the price on `2019-08-16` is `50`.

**Product 3:**

- The first price change happened on `2019-08-18`.
- No price changes occurred on or before `2019-08-16`.
- Therefore, the price on `2019-08-16` is the default price of `10`.

## Expected Result

The output must contain:

- `product_id`
- `price`

For each product:

1. Find the most recent price change on or before `2019-08-16`.
2. Use the `new_price` from that change.
3. If no price change occurred on or before that date, use the default price of `10`.

Each product should appear exactly once.

Return the result in any order.