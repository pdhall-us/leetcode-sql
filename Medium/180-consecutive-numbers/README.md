# 180. Consecutive Numbers

**Difficulty:** Medium

## Problem

Find all numbers that appear at least three times consecutively.

Return the result table in any order.

## Table: `Logs`

| Column Name | Type |
| ----------- | ---- |
| `id`        | int  |
| `num`       | varchar |

In SQL, `id` is the primary key for this table.

`id` is an autoincrement column starting from 1.

Each row of this table contains information about a number in the log.

## Example 1

**Input:**

**Logs table:**

| id | num |
| -- | --- |
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |

**Output:**

| ConsecutiveNums |
| --------------- |
| 1               |

**Explanation:**

- The number `1` appears consecutively at IDs 1, 2, and 3.
- The number `2` appears at IDs 4, 6, and 7, but not three times consecutively.
- Therefore, only `1` satisfies the condition.

## Expected Result

The output must contain:

- `ConsecutiveNums`

Return each qualifying number only once.

A number qualifies if it appears in at least three consecutive rows ordered by `id`.

The result can be returned in any order.