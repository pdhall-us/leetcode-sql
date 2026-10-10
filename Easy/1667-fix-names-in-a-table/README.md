# 1667. Fix Names in a Table

**Difficulty:** Easy

## Problem

Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

Return the result table ordered by `user_id` in ascending order.

## Table: `Users`

| Column Name | Type    |
| ----------- | ------- |
| `user_id`   | int     |
| `name`      | varchar |

`user_id` is the primary key (a column with unique values) for this table.

This table contains the ID and the name of each user.

The `name` column contains only alphabetical characters.

## Example 1

**Input:**

**Users table:**

| user_id | name  |
| ------- | ----- |
| 1       | aLice |
| 2       | bOB   |

**Output:**

| user_id | name  |
| ------- | ----- |
| 1       | Alice |
| 2       | Bob   |

**Explanation:**

**User 1:**

- Original name: `aLice`
- The first character `a` is converted to uppercase `A`.
- The remaining characters `Lice` are converted to lowercase `lice`.
- The corrected name is `Alice`.

**User 2:**

- Original name: `bOB`
- The first character `b` is converted to uppercase `B`.
- The remaining characters `OB` are converted to lowercase `ob`.
- The corrected name is `Bob`.

## Expected Result

The output must contain:

- `user_id`
- `name`

The `name` column must follow these rules:

1. The first character must be uppercase.
2. All remaining characters must be lowercase.
3. The original `user_id` must remain unchanged.
4. The result must be ordered by `user_id` in ascending order.