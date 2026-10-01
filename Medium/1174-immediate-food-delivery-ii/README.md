# 1174. Immediate Food Delivery II

**Difficulty:** Medium

## Problem

If the customer's preferred delivery date is the same as the order date, then the order is called **immediate**; otherwise, it is called **scheduled**.

The first order of a customer is the order with the earliest order date that the customer made.

It is guaranteed that each customer has precisely one first order.

Write a solution to find the percentage of immediate orders among the first orders of all customers.

Round the result to 2 decimal places.

## Table: `Delivery`

| Column Name                   | Type |
| ----------------------------- | ---- |
| `delivery_id`                 | int  |
| `customer_id`                 | int  |
| `order_date`                  | date |
| `customer_pref_delivery_date` | date |

`delivery_id` contains unique values in this table.

The table contains information about food deliveries to customers who place orders on a specific date and specify a preferred delivery date.

The preferred delivery date can be the same as the order date or a later date.

## Example 1

**Input:**

**Delivery table:**

| delivery_id | customer_id | order_date | customer_pref_delivery_date |
| ----------: | ----------: | ---------- | --------------------------- |
| 1           | 1           | 2019-08-01 | 2019-08-02                  |
| 2           | 2           | 2019-08-02 | 2019-08-02                  |
| 3           | 1           | 2019-08-11 | 2019-08-12                  |
| 4           | 3           | 2019-08-24 | 2019-08-24                  |
| 5           | 3           | 2019-08-21 | 2019-08-22                  |
| 6           | 2           | 2019-08-11 | 2019-08-13                  |
| 7           | 4           | 2019-08-09 | 2019-08-09                  |

**Output:**

| immediate_percentage |
| -------------------: |
| 50.00                |

**Explanation:**

- Customer 1 has delivery 1 as their first order. It is scheduled.
- Customer 2 has delivery 2 as their first order. It is immediate.
- Customer 3 has delivery 5 as their first order. It is scheduled.
- Customer 4 has delivery 7 as their first order. It is immediate.

Therefore, 2 out of 4 customers have immediate first orders.

The percentage of immediate first orders is `50.00`.