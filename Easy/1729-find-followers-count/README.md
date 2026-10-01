# 1729. Find Followers Count

**Difficulty:** Easy

## Problem

Write a solution that will, for each user, return the number of followers.

Return the result table ordered by `user_id` in ascending order.

## Table: `Followers`

| Column Name   | Type |
| ------------- | ---- |
| `user_id`     | int  |
| `follower_id` | int  |

`(user_id, follower_id)` is the primary key (a combination of columns with unique values) for this table.

This table contains the IDs of a user and a follower in a social media app where the follower follows the user.

## Example 1

**Input:**

**Followers table:**

| user_id | follower_id |
| ------: | ----------: |
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

**Output:**

| user_id | followers_count |
| ------: | --------------: |
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

**Explanation:**

- The followers of user 0 are `{1}`, so the follower count is 1.
- The followers of user 1 are `{0}`, so the follower count is 1.
- The followers of user 2 are `{0, 1}`, so the follower count is 2.