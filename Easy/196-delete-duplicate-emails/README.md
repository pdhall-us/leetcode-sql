# 196. Delete Duplicate Emails

**Difficulty:** Easy

## Problem

Write a solution to delete all duplicate emails, keeping only one unique email with the smallest `id`.

For SQL, the solution must use a `DELETE` statement rather than a `SELECT` statement.

After running the query, the resulting `Person` table should contain only unique email addresses. The final order of the table does not matter.

## Table: `Person`

| Column Name | Type    |
| ----------- | ------- |
| `id`        | int     |
| `email`     | varchar |

`id` is the primary key (a column with unique values) for this table.

Each row of this table contains an email address.

The emails do not contain uppercase letters.

## Example 1

**Input:**

**Person table:**

| id | email            |
| -: | ---------------- |
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

**Output:**

| id | email            |
| -: | ---------------- |
| 1  | john@example.com |
| 2  | bob@example.com  |

**Explanation:**

`john@example.com` appears twice with IDs 1 and 3.

Since only one copy of each email should remain, the row with the smallest ID (`id = 1`) is kept and the duplicate row (`id = 3`) is deleted.