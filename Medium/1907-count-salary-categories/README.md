# 1907. Count Salary Categories

**Difficulty:** Medium

## Problem

Write a solution to calculate the number of bank accounts for each salary category.

The salary categories are:

- **Low Salary:** All salaries strictly less than `$20000`.
- **Average Salary:** All salaries in the inclusive range `[$20000, $50000]`.
- **High Salary:** All salaries strictly greater than `$50000`.

The result table must contain all three categories.

If there are no accounts in a category, report `0`.

Return the result table in any order.

## Table: `Accounts`

| Column Name | Type |
| ----------- | ---- |
| `account_id` | int |
| `income` | int |

`account_id` is the primary key (a column with unique values) for this table.

Each row contains information about the monthly income of one bank account.

## Example 1

**Input:**

**Accounts table:**

| account_id | income |
| ---------- | ------ |
| 3 | 108939 |
| 2 | 12747 |
| 8 | 87709 |
| 6 | 91796 |

**Output:**

| category | accounts_count |
| -------- | -------------- |
| Low Salary | 1 |
| Average Salary | 0 |
| High Salary | 3 |

**Explanation:**

**Low Salary:**

- Account 2 has an income of `$12747`.
- This income is strictly less than `$20000`.
- Total accounts = `1`.

**Average Salary:**

- No accounts have an income between `$20000` and `$50000`, inclusive.
- Total accounts = `0`.

**High Salary:**

- Account 3 has an income of `$108939`.
- Account 8 has an income of `$87709`.
- Account 6 has an income of `$91796`.
- All three incomes are strictly greater than `$50000`.
- Total accounts = `3`.

## Expected Result

The output must contain:

- `category`
- `accounts_count`

The `category` column must contain exactly these three values:

1. `Low Salary`
2. `Average Salary`
3. `High Salary`

The `accounts_count` column represents the number of accounts belonging to each category.

All three categories must appear in the result, even if their account count is `0`.

Return the result in any order.