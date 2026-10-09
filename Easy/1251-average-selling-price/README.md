# 1251. Average Selling Price

**Difficulty:** Easy

## Problem

Write a solution to find the average selling price for each product.

`average_price` should be rounded to 2 decimal places.

If a product does not have any sold units, its average selling price is assumed to be `0`.

Return the result table in any order.

## Table: `Prices`

| Column Name | Type |
| ----------- | ---- |
| `product_id` | int |
| `start_date` | date |
| `end_date` | date |
| `price` | int |

`(product_id, start_date, end_date)` is the primary key (a combination of columns with unique values) for this table.

Each row of this table indicates the price of the product `product_id` in the period from `start_date` to `end_date`.

For each `product_id`, there will be no two overlapping periods.

The price of each product is recorded for different time periods.

## Table: `UnitsSold`

| Column Name | Type |
| ----------- | ---- |
| `product_id` | int |
| `purchase_date` | date |
| `units` | int |

This table may contain duplicate rows.

Each row of this table indicates the date, units, and product ID of each product sold.

## Example 1

**Input:**

**Prices table:**

| product_id | start_date | end_date | price |
| ---------- | ---------- | -------- | ----- |
| 1 | 2019-02-17 | 2019-02-28 | 5 |
| 1 | 2019-03-01 | 2019-03-22 | 20 |
| 2 | 2019-02-01 | 2019-02-20 | 15 |
| 2 | 2019-02-21 | 2019-03-31 | 30 |

**UnitsSold table:**

| product_id | purchase_date | units |
| ---------- | ------------- | ----- |
| 1 | 2019-02-25 | 100 |
| 1 | 2019-03-01 | 15 |
| 2 | 2019-02-10 | 200 |
| 2 | 2019-03-22 | 30 |

**Output:**

| product_id | average_price |
| ---------- | ------------- |
| 1 | 6.96 |
| 2 | 16.96 |

**Explanation:**

**Product 1:**

- 100 units were sold at a price of 5.
- 15 units were sold at a price of 20.
- Total revenue = `(100 × 5) + (15 × 20) = 800`
- Total units sold = `100 + 15 = 115`
- Average selling price = `800 / 115 = 6.96`

**Product 2:**

- 200 units were sold at a price of 15.
- 30 units were sold at a price of 30.
- Total revenue = `(200 × 15) + (30 × 30) = 3900`
- Total units sold = `200 + 30 = 230`
- Average selling price = `3900 / 230 = 16.96`

The average selling price is calculated as:

**Average Selling Price = Total Revenue / Total Units Sold**

The result is rounded to 2 decimal places.

If no units were sold for a product, the average selling price is `0`.