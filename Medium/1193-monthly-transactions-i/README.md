# 1193. Monthly Transactions I

**Difficulty:** Medium

## Problem

Write an SQL query to find, for each month and country:

- The number of transactions.
- The total transaction amount.
- The number of approved transactions.
- The total amount of approved transactions.

Return the result table in any order.

## Table: `Transactions`

| Column Name  | Type    |
| ------------ | ------- |
| `id`         | int     |
| `country`    | varchar |
| `state`      | enum    |
| `amount`     | int     |
| `trans_date` | date    |

`id` is the primary key of this table.

The table contains information about incoming transactions.

The `state` column is an ENUM of type:

`["approved", "declined"]`

## Example 1

**Input:**

**Transactions table:**

| id  | country | state    | amount | trans_date |
| --: | ------- | -------- | -----: | ---------- |
| 121 | US      | approved | 1000   | 2018-12-18 |
| 122 | US      | declined | 2000   | 2018-12-19 |
| 123 | US      | approved | 2000   | 2019-01-01 |
| 124 | DE      | approved | 2000   | 2019-01-07 |

**Output:**

| month   | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
| ------- | ------- | ----------: | -------------: | -----------------: | --------------------: |
| 2018-12 | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01 | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01 | DE      | 1           | 1              | 2000               | 2000                  |

**Explanation:**

- In December 2018, the US had 2 transactions with a total amount of 3000. Out of these, 1 transaction was approved with an approved amount of 1000.
- In January 2019, the US had 1 transaction. It was approved, with a total and approved amount of 2000.
- In January 2019, Germany had 1 transaction. It was approved, with a total and approved amount of 2000.