# 1204. Last Person to Fit in the Bus

**Difficulty:** Medium

## Problem

There is a queue of people waiting to board a bus.

The bus has a weight limit of `1000` kilograms, so there may be some people who cannot board.

Write a solution to find the `person_name` of the last person who can board the bus without exceeding the weight limit.

The test cases are generated such that the first person in the queue can always board the bus.

Only one person can board the bus at any given turn.

## Table: `Queue`

| Column Name   | Type    |
| ------------- | ------- |
| `person_id`   | int     |
| `person_name` | varchar |
| `weight`      | int     |
| `turn`        | int     |

`person_id` contains unique values.

`turn` contains unique values.

Each row of this table contains information about a person waiting to board the bus.

The `person_id` and `turn` columns contain all numbers from `1` to `n`, where `n` is the number of rows in the table.

`turn` determines the order in which people board the bus.

The bus has a maximum weight capacity of `1000` kilograms.

## Example 1

**Input:**

**Queue table:**

| person_id | person_name | weight | turn |
| --------- | ----------- | ------ | ---- |
| 5         | Alice       | 250    | 1    |
| 4         | Bob         | 175    | 5    |
| 3         | Alex        | 350    | 2    |
| 6         | John Cena   | 400    | 3    |
| 1         | Winston     | 500    | 6    |
| 2         | Marie       | 200    | 4    |

**Output:**

| person_name |
| ----------- |
| John Cena   |

**Explanation:**

The boarding order is determined by the `turn` column.

| Turn | Person | Weight | Total Weight |
| ---- | ------ | ------ | ------------ |
| 1 | Alice | 250 | 250 |
| 2 | Alex | 350 | 600 |
| 3 | John Cena | 400 | 1000 |
| 4 | Marie | 200 | 1200 |
| 5 | Bob | 175 | 1375 |
| 6 | Winston | 500 | 1875 |

- Alice boards first, bringing the total weight to `250`.
- Alex boards next, bringing the total weight to `600`.
- John Cena boards next, bringing the total weight to `1000`.
- Marie would increase the total weight to `1200`, exceeding the bus capacity.

Therefore, **John Cena** is the last person who can board the bus.

## Expected Result

The output must contain:

- `person_name`

The result should identify the last person who can board the bus without exceeding the maximum weight limit of `1000` kilograms.

People must board according to their `turn` order.