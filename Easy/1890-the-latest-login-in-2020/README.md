# 1890. The Latest Login in 2020

**Difficulty:** Easy

## Problem

Write a solution to report the latest login for all users in the year `2020`.

Do not include users who did not log in in `2020`.

Return the result table in any order.

## Table: `Logins`

| Column Name | Type     |
| ----------- | -------- |
| user_id     | int      |
| time_stamp  | datetime |

`(user_id, time_stamp)` is the primary key (a combination of columns with unique values) for this table.

Each row contains the ID of the user and the time at which the user logged in.

## Example 1

**Input:**

**Logins table:**

| user_id | time_stamp          |
| ------- | ------------------- |
| 6       | 2020-06-30 15:06:07 |
| 6       | 2021-04-21 14:06:06 |
| 6       | 2019-03-07 00:18:15 |
| 8       | 2020-02-01 05:10:53 |
| 8       | 2020-12-30 00:46:50 |
| 2       | 2020-01-16 02:49:50 |
| 2       | 2019-08-25 07:59:08 |
| 14      | 2019-07-14 09:00:00 |
| 14      | 2021-01-06 11:59:59 |

**Output:**

| user_id | last_stamp          |
| ------- | ------------------- |
| 6       | 2020-06-30 15:06:07 |
| 8       | 2020-12-30 00:46:50 |
| 2       | 2020-01-16 02:49:50 |

**Explanation:**

**User 6:**

- Logged in on `2019-03-07 00:18:15`.
- Logged in on `2020-06-30 15:06:07`.
- Logged in on `2021-04-21 14:06:06`.
- Only the login in `2020` is considered.
- Latest login in 2020 = `2020-06-30 15:06:07`.

**User 8:**

- Logged in on `2020-02-01 05:10:53`.
- Logged in on `2020-12-30 00:46:50`.
- Latest login in 2020 = `2020-12-30 00:46:50`.

**User 2:**

- Logged in on `2019-08-25 07:59:08`.
- Logged in on `2020-01-16 02:49:50`.
- Latest login in 2020 = `2020-01-16 02:49:50`.

**User 14:**

- Logged in during `2019` and `2021`.
- Did not log in during `2020`.
- Therefore, user `14` is excluded from the result.

## Expected Result

The output must contain:

- `user_id`
- `last_stamp`

The result must satisfy the following conditions:

1. Consider only login records from the year `2020`.
2. Identify every user who logged in at least once during `2020`.
3. Find the latest login timestamp for each qualifying user.
4. Exclude users who did not log in during `2020`.
5. Return exactly one row per qualifying user.
6. Return the latest login timestamp in a column named `last_stamp`.
7. Include both the date and time in the result.
8. Return the result in any order.