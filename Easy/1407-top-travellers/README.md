# 1407. Top Travellers

**Difficulty:** Easy

## Problem

Write a solution to report the distance traveled by each user.

Return the result table ordered by `travelled_distance` in descending order. If two or more users traveled the same distance, order them by their `name` in ascending order.

## Table: `Users`

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |

`id` is the primary key (a column with unique values) for this table.

`name` is the name of the user.

## Table: `Rides`

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| user_id     | int  |
| distance    | int  |

`id` is the primary key (a column with unique values) for this table.

`user_id` is a foreign key (reference column) to the `Users` table.

`distance` is the distance traveled by the user.

## Example 1

**Input:**

**Users table:**

| id | name     |
| -- | -------- |
| 1  | Alice    |
| 2  | Bob      |
| 3  | Alex     |
| 4  | Donald   |
| 7  | Lee      |
| 13 | Jonathan |
| 19 | Elvis    |

**Rides table:**

| id | user_id | distance |
| -- | ------- | -------- |
| 1  | 1       | 120      |
| 2  | 2       | 317      |
| 3  | 3       | 222      |
| 4  | 7       | 100      |
| 5  | 13      | 312      |
| 6  | 19      | 50       |
| 7  | 7       | 120      |
| 8  | 19      | 400      |
| 9  | 7       | 230      |

**Output:**

| name     | travelled_distance |
| -------- | ------------------ |
| Elvis    | 450                |
| Lee      | 450                |
| Bob      | 317                |
| Jonathan | 312                |
| Alex     | 222                |
| Alice    | 120                |
| Donald   | 0                  |

**Explanation:**

**Elvis:**

- Traveled `50` units in the first ride.
- Traveled `400` units in the second ride.
- Total distance = `50 + 400 = 450`.

**Lee:**

- Traveled `100` units in the first ride.
- Traveled `120` units in the second ride.
- Traveled `230` units in the third ride.
- Total distance = `100 + 120 + 230 = 450`.

**Bob:**

- Traveled `317` units.
- Total distance = `317`.

**Jonathan:**

- Traveled `312` units.
- Total distance = `312`.

**Alex:**

- Traveled `222` units.
- Total distance = `222`.

**Alice:**

- Traveled `120` units.
- Total distance = `120`.

**Donald:**

- Did not take any rides.
- Total distance = `0`.

**Ordering:**

- Elvis and Lee both traveled `450` units.
- Since their distances are equal, they are sorted alphabetically by name.
- Therefore, Elvis appears before Lee.
- All remaining users are sorted by total distance in descending order.

## Expected Result

The output must contain:

- `name`
- `travelled_distance`

The result must satisfy the following conditions:

1. Include every user from the `Users` table.
2. Calculate the total distance traveled by each user.
3. Sum the distances of all rides belonging to the same user.
4. Return `0` for users who have not taken any rides.
5. Return exactly one row per user.
6. Name the calculated distance column `travelled_distance`.
7. Sort the result by `travelled_distance` in descending order.
8. If multiple users have the same distance, sort them by `name` in ascending order.