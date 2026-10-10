# 1484. Group Sold Products By The Date

**Difficulty:** Easy

## Problem

Write a solution to find for each date the number of different products sold and their names.

The sold products' names for each date should be sorted lexicographically.

Return the result table ordered by `sell_date` in ascending order.

## Table: `Activities`

| Column Name | Type |
| ----------- | ---- |
| `sell_date` | date |
| `product` | varchar |

There is no primary key (column with unique values) for this table.

This table may contain duplicates.

Each row of this table contains the product name and the date it was sold in a market.

## Example 1

**Input:**

**Activities table:**

| sell_date | product |
| ---------- | ------- |
| 2020-05-30 | Headphone |
| 2020-06-01 | Pencil |
| 2020-06-02 | Mask |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible |
| 2020-06-02 | Mask |
| 2020-05-30 | T-Shirt |

**Output:**

| sell_date | num_sold | products |
| ---------- | -------- | ------------------------------ |
| 2020-05-30 | 3 | Basketball,Headphone,T-Shirt |
| 2020-06-01 | 2 | Bible,Pencil |
| 2020-06-02 | 1 | Mask |

**Explanation:**

**2020-05-30:**

- Three different products were sold: Headphone, Basketball, and T-Shirt.
- The products are sorted lexicographically.
- The resulting product list is `Basketball,Headphone,T-Shirt`.
- The number of different products sold is `3`.

**2020-06-01:**

- Two different products were sold: Pencil and Bible.
- The products are sorted lexicographically.
- The resulting product list is `Bible,Pencil`.
- The number of different products sold is `2`.

**2020-06-02:**

- Mask appears twice in the table.
- Duplicate products are counted only once.
- The resulting product list is `Mask`.
- The number of different products sold is `1`.

## Expected Result

The output must contain:

- `sell_date`
- `num_sold`
- `products`

The `num_sold` column represents the number of distinct products sold on each date.

The `products` column contains the distinct product names, sorted lexicographically and separated by commas without spaces.

Duplicate product names must appear only once for each date.

Return the result ordered by `sell_date` in ascending order.