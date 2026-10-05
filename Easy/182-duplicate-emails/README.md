# 182. Duplicate Emails

**Difficulty:** Easy

## Problem

Write a solution to report all the duplicate emails.

Note that it is guaranteed that the `email` field is not `NULL`.

Return the result table in any order.

## Table: `Person`

| Column Name | Type    |
| ----------- | ------- |
| `id`        | int     |
| `email`     | varchar |

`id` is the primary key (a column with unique values) for this table.

Each row of this table contains an email address.

The emails will not contain uppercase letters.

## Example 1

**Input:**

**Person table:**

| id | email   |
| -: | ------- |
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |

**Output:**

| Email   |
| ------- |
| a@b.com |

**Explanation:**

`a@b.com` appears more than once in the `Person` table.

Therefore, it is returned as a duplicate email.