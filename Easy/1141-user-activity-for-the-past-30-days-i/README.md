# 1141. User Activity for the Past 30 Days I

**Difficulty:** Easy

## Problem

Write a solution to find the daily active user count for a period of 30 days ending `2019-07-27` inclusively.

A user was active on a day if they made at least one activity on that day.

Return the result table in any order.

Any activity from `('open_session', 'end_session', 'scroll_down', 'send_message')` will be considered valid activity for a user to be considered active on a day.

## Table: `Activity`

| Column Name     | Type |
| --------------- | ---- |
| `user_id`       | int  |
| `session_id`    | int  |
| `activity_date` | date |
| `activity_type` | enum |

This table may have duplicate rows.

The `activity_type` column is an ENUM (category) of type:

`('open_session', 'end_session', 'scroll_down', 'send_message')`

The table shows the user activities for a social media website.

Each session belongs to exactly one user.

## Example 1

**Input:**

**Activity table:**

| user_id | session_id | activity_date | activity_type |
| ------: | ---------: | ------------- | ------------- |
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |
| 4       | 3          | 2019-06-25    | open_session  |
| 4       | 3          | 2019-06-25    | end_session   |

**Output:**

| day        | active_users |
| ---------- | -----------: |
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |

**Explanation:**

On `2019-07-20`, users 1 and 2 performed at least one activity, so there are 2 active users.

On `2019-07-21`, users 2 and 3 performed at least one activity, so there are 2 active users.

User 1 performed multiple activities on `2019-07-20`, but they are counted only once for that day.

Activities outside the required 30-day period are not included.

Days with zero active users do not need to be included in the result.