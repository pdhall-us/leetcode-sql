# 1633. Percentage of Users Attended a Contest

**Difficulty:** Easy

## Problem

Write a solution to find the percentage of users registered in each contest, rounded to two decimal places.

Return the result table ordered by `percentage` in descending order. In case of a tie, order it by `contest_id` in ascending order.

## Table: `Users`

| Column Name | Type    |
| ----------- | ------- |
| `user_id`   | int     |
| `user_name` | varchar |

`user_id` is the primary key (a column with unique values) for this table.

Each row of this table contains the name and the ID of a user.

## Table: `Register`

| Column Name  | Type |
| ------------ | ---- |
| `contest_id` | int  |
| `user_id`    | int  |

`(contest_id, user_id)` is the primary key (a combination of columns with unique values) for this table.

Each row of this table contains the ID of a user and the contest they registered for.

## Example 1

**Input:**

**Users table:**

| user_id | user_name |
| ------: | --------- |
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |

**Register table:**

| contest_id | user_id |
| ---------: | ------: |
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |

**Output:**

| contest_id | percentage |
| ---------: | ---------: |
| 208        | 100.00     |
| 209        | 100.00     |
| 210        | 100.00     |
| 215        | 66.67      |
| 207        | 33.33      |

**Explanation:**

There are 3 users in total.

**Contest 208:**

- Registered users: Alice, Bob, and Alex.
- Total registered users = 3.
- Percentage = `(3 / 3) × 100 = 100.00`

**Contest 209:**

- Registered users: Alice, Bob, and Alex.
- Total registered users = 3.
- Percentage = `(3 / 3) × 100 = 100.00`

**Contest 210:**

- Registered users: Alice, Bob, and Alex.
- Total registered users = 3.
- Percentage = `(3 / 3) × 100 = 100.00`

**Contest 215:**

- Registered users: Alice and Alex.
- Total registered users = 2.
- Percentage = `(2 / 3) × 100 = 66.67`

**Contest 207:**

- Registered users: Bob.
- Total registered users = 1.
- Percentage = `(1 / 3) × 100 = 33.33`

The percentage is calculated as:

**Percentage = (Registered Users / Total Users) × 100**

The result is rounded to 2 decimal places.

Results are sorted by `percentage` in descending order and by `contest_id` in ascending order when percentages are equal.