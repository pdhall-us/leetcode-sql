# 1211. Queries Quality and Percentage

**Difficulty:** Easy

## Problem

We define query quality as:

The average of the ratio between query rating and its position.

We also define poor query percentage as:

The percentage of all queries with a rating less than 3.

Write a solution to find each `query_name`, the `quality`, and `poor_query_percentage`.

Both `quality` and `poor_query_percentage` should be rounded to 2 decimal places.

Return the result table in any order.

## Table: `Queries`

| Column Name  | Type    |
| ------------ | ------- |
| `query_name` | varchar |
| `result`     | varchar |
| `position`   | int     |
| `rating`     | int     |

This table may have duplicate rows.

This table contains information collected from some queries on a database.

The `position` column has a value from 1 to 500.

The `rating` column has a value from 1 to 5.

A query with a rating less than 3 is considered a poor query.

`query_name` may be `NULL`.

## Example 1

**Input:**

**Queries table:**

| query_name | result            | position | rating |
| ---------- | ----------------- | -------- | ------ |
| Dog        | Golden Retriever  | 1        | 5      |
| Dog        | German Shepherd   | 2        | 5      |
| Dog        | Mule              | 200      | 1      |
| Cat        | Shirazi           | 5        | 2      |
| Cat        | Siamese           | 3        | 3      |
| Cat        | Sphynx            | 7        | 4      |

**Output:**

| query_name | quality | poor_query_percentage |
| ---------- | ------- | --------------------- |
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |

**Explanation:**

**Dog:**

- Golden Retriever: `5 / 1 = 5.00`
- German Shepherd: `5 / 2 = 2.50`
- Mule: `1 / 200 = 0.005`

Quality:

`(5.00 + 2.50 + 0.005) / 3 = 2.50`

Poor queries:

- Mule has a rating of 1, which is less than 3.
- Poor query percentage = `(1 / 3) × 100 = 33.33`

**Cat:**

- Shirazi: `2 / 5 = 0.40`
- Siamese: `3 / 3 = 1.00`
- Sphynx: `4 / 7 ≈ 0.5714`

Quality:

`(0.40 + 1.00 + 0.5714) / 3 = 0.66`

Poor queries:

- Shirazi has a rating of 2, which is less than 3.
- Poor query percentage = `(1 / 3) × 100 = 33.33`

## Formulas

**Query Quality:**

`Quality = SUM(Rating / Position) / Total Queries`

**Poor Query Percentage:**

`Poor Query Percentage = (Queries With Rating < 3 / Total Queries) × 100`

Both results must be rounded to 2 decimal places.

Rows with a `NULL` query name are excluded from the result.