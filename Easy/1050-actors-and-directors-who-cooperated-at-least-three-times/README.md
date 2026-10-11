# 1050. Actors and Directors Who Cooperated At Least Three Times

**Difficulty:** Easy

## Problem

Write a solution to find all the pairs `(actor_id, director_id)` where the actor has cooperated with the director at least three times.

Return the result table in any order.

## Table: `ActorDirector`

| Column Name | Type |
| ----------- | ---- |
| actor_id    | int  |
| director_id | int  |
| timestamp   | int  |

`timestamp` is the primary key (a column with unique values) for this table.

Each row of this table indicates that the actor with ID `actor_id` has cooperated with the director with ID `director_id` at some point in time.

## Example 1

**Input:**

**ActorDirector table:**

| actor_id | director_id | timestamp |
| -------- | ----------- | --------- |
| 1        | 1           | 0         |
| 1        | 1           | 1         |
| 1        | 1           | 2         |
| 1        | 2           | 3         |
| 1        | 2           | 4         |
| 2        | 1           | 5         |
| 2        | 1           | 6         |

**Output:**

| actor_id | director_id |
| -------- | ----------- |
| 1        | 1           |

**Explanation:**

**Actor 1 and Director 1:**

- Cooperated at timestamps `0`, `1`, and `2`.
- Total collaborations: `3`.
- Therefore, this pair is included.

**Actor 1 and Director 2:**

- Cooperated at timestamps `3` and `4`.
- Total collaborations: `2`.
- Therefore, this pair is excluded.

**Actor 2 and Director 1:**

- Cooperated at timestamps `5` and `6`.
- Total collaborations: `2`.
- Therefore, this pair is excluded.

## Expected Result

The output must contain:

- `actor_id`
- `director_id`

The result must satisfy the following conditions:

1. Identify each unique actor-director pair.
2. Count the number of collaborations between each pair.
3. Include only pairs that have cooperated at least three times.
4. Return each qualifying pair exactly once.
5. Return the result in any order.