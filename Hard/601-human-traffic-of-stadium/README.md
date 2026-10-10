# 601. Human Traffic of Stadium

**Difficulty:** Hard

## Problem

Write a solution to display the records with three or more rows with consecutive `id` values, and the number of people is greater than or equal to 100 for each.

Return the result table ordered by `visit_date` in ascending order.

## Table: `Stadium`

| Column Name | Type |
| ----------- | ---- |
| id | int |
| visit_date | date |
| people | int |

`visit_date` is the column with unique values for this table.

Each row of this table contains the visit date and visit ID to the stadium with the number of people during the visit.

As the `id` increases, the date increases as well.

## Example 1

**Input:**

**Stadium table:**

| id | visit_date | people |
| -- | ---------- | ------ |
| 1 | 2017-01-01 | 10 |
| 2 | 2017-01-02 | 109 |
| 3 | 2017-01-03 | 150 |
| 4 | 2017-01-04 | 99 |
| 5 | 2017-01-05 | 145 |
| 6 | 2017-01-06 | 1455 |
| 7 | 2017-01-07 | 199 |
| 8 | 2017-01-09 | 188 |

**Output:**

| id | visit_date | people |
| -- | ---------- | ------ |
| 5 | 2017-01-05 | 145 |
| 6 | 2017-01-06 | 1455 |
| 7 | 2017-01-07 | 199 |
| 8 | 2017-01-09 | 188 |

**Explanation:**

**Rows 1–3:**

- Row 1 has `people = 10`, which is less than 100.
- Rows 2 and 3 have at least 100 people.
- However, there are only two consecutive qualifying IDs.
- Therefore, these rows are excluded.

**Row 4:**

- Row 4 has `people = 99`, which is less than 100.
- It breaks the sequence of qualifying rows.
- Therefore, row 4 is excluded.

**Rows 5–8:**

| id | visit_date | people |
| -- | ---------- | ------ |
| 5 | 2017-01-05 | 145 |
| 6 | 2017-01-06 | 1455 |
| 7 | 2017-01-07 | 199 |
| 8 | 2017-01-09 | 188 |

- All four rows have `people >= 100`.
- Their IDs are consecutive: `5, 6, 7, 8`.
- The sequence contains at least three rows.
- Therefore, all four rows are included.

Notice that the visit dates do not need to be consecutive. The condition applies to consecutive `id` values.

## Expected Result

The output must contain:

- `id`
- `visit_date`
- `people`

The result must satisfy the following conditions:

1. Identify rows where `people >= 100`.
2. Find sequences containing at least three consecutive `id` values.
3. Every row within a qualifying sequence must have at least 100 people.
4. Return all rows belonging to qualifying sequences, including sequences longer than three rows.
5. Exclude rows that do not belong to a qualifying sequence.
6. Return the result ordered by `visit_date` in ascending order.