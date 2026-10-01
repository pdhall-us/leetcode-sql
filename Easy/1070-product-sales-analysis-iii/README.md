# 1070. Product Sales Analysis III

**Difficulty:** Medium

## Problem

Write a solution to find all sales that occurred in the first year each product was sold.

For each `product_id`, identify the earliest year it appears in the `Sales` table.

Return all sales entries for that product in that year.

Return a table with the following columns:

- `product_id`
- `first_year`
- `quantity`
- `price`

Return the result in any order.

## Table: `Sales`

| Column Name  | Type |
| ------------ | ---- |
| `sale_id`    | int  |
| `product_id` | int  |
| `year`       | int  |
| `quantity`   | int  |
| `price`      | int  |

`(sale_id, year)` is the primary key (a combination of columns with unique values) for this table.

Each row records a sale of a product in a given year.

A product may have multiple sales entries in the same year.

The `price` represents the per-unit price.

## Example 1

**Input:**

**Sales table:**

| sale_id | product_id | year | quantity | price |
| ------: | ---------: | ---: | -------: | ----: |
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

**Output:**

| product_id | first_year | quantity | price |
| ---------: | ---------: | -------: | ----: |
| 100        | 2008       | 10       | 5000  |
| 200        | 2011       | 15       | 9000  |

**Explanation:**

- Product 100 was first sold in 2008, so its 2008 sales entry is returned.
- Product 200 was first sold in 2011, so its 2011 sales entry is returned.