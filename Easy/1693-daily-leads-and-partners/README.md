# 1693. Daily Leads and Partners

**Difficulty:** Easy

## Problem

For each `date_id` and `make_name`, find the number of **distinct `lead_id`** and **distinct `partner_id`**.

Return the result table in any order.

## Table: `DailySales`

| Column Name | Type    |
| ----------- | ------- |
| date_id     | date    |
| make_name   | varchar |
| lead_id     | int     |
| partner_id  | int     |

There is no primary key (column with unique values) for this table. It may contain duplicates.

This table contains the date and the name of the product sold, along with the IDs of the lead and partner associated with the sale.

The `make_name` column represents the name of the product.

## Example 1

**Input:**

**DailySales table:**

| date_id    | make_name | lead_id | partner_id |
| ---------- | --------- | ------- | ---------- |
| 2020-12-8  | toyota    | 0       | 1          |
| 2020-12-8  | toyota    | 1       | 0          |
| 2020-12-8  | toyota    | 1       | 2          |
| 2020-12-7  | toyota    | 0       | 2          |
| 2020-12-7  | toyota    | 0       | 1          |
| 2020-12-8  | honda     | 1       | 2          |
| 2020-12-8  | honda     | 2       | 1          |
| 2020-12-7  | honda     | 0       | 1          |
| 2020-12-7  | honda     | 1       | 2          |
| 2020-12-7  | honda     | 2       | 1          |

**Output:**

| date_id    | make_name | unique_leads | unique_partners |
| ---------- | --------- | ------------ | --------------- |
| 2020-12-8  | toyota    | 2            | 3               |
| 2020-12-7  | toyota    | 1            | 2               |
| 2020-12-8  | honda     | 2            | 2               |
| 2020-12-7  | honda     | 3            | 2               |

**Explanation:**

**Toyota — 2020-12-08:**

- Lead IDs: `0, 1, 1`
- Distinct lead IDs: `0, 1`
- Unique leads = `2`
- Partner IDs: `1, 0, 2`
- Unique partners = `3`

**Toyota — 2020-12-07:**

- Lead IDs: `0, 0`
- Distinct lead IDs: `0`
- Unique leads = `1`
- Partner IDs: `2, 1`
- Unique partners = `2`

**Honda — 2020-12-08:**

- Lead IDs: `1, 2`
- Unique leads = `2`
- Partner IDs: `2, 1`
- Unique partners = `2`

**Honda — 2020-12-07:**

- Lead IDs: `0, 1, 2`
- Unique leads = `3`
- Partner IDs: `1, 2, 1`
- Distinct partner IDs: `1, 2`
- Unique partners = `2`

## Expected Result

The output must contain:

- `date_id`
- `make_name`
- `unique_leads`
- `unique_partners`

The result must satisfy the following conditions:

1. Group records by `date_id` and `make_name`.
2. Count the distinct `lead_id` values for each group.
3. Count the distinct `partner_id` values for each group.
4. Do not count duplicate IDs more than once within the same group.
5. Return the distinct lead count as `unique_leads`.
6. Return the distinct partner count as `unique_partners`.
7. Return exactly one row for each unique combination of date and product.
8. Return the result in any order.