# 1581. Customer Who Visited but Did Not Make Any Transactions

**Difficulty:** Easy

## Problem

Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.

## Table: `Visits`

| Column Name   | Type |
| ------------- | ---- |
| `visit_id`    | int  |
| `customer_id` | int  |

`visit_id` is the column with unique values for this table.

This table contains information about the customers who visited the mall.

## Table: `Transactions`

| Column Name    | Type |
| -------------- | ---- |
| `transaction_id` | int |
| `visit_id`       | int |
| `amount`         | int |

`transaction_id` is the column with unique values for this table.

This table contains information about the transactions made during a particular visit.

## Example 1

**Input:**

**Visits table:**

| visit_id | customer_id |
| -------: | ----------: |
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |

**Transactions table:**

| transaction_id | visit_id | amount |
| -------------: | -------: | -----: |
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |

**Output:**

| customer_id | count_no_trans |
| ----------: | -------------: |
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |

**Explanation:**

Customer `23` visited once and made one transaction during the visit.

Customer `9` visited once and made one transaction during the visit.

Customer `30` visited once and did not make any transactions.

Customer `54` visited three times. During one visit, the customer made three transactions, while during the other two visits no transactions were made.

Customer `96` visited once and did not make any transactions.

Therefore, customers `30`, `54`, and `96` had visits without transactions.