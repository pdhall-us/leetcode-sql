# 626. Exchange Seats

**Difficulty:** Medium

## Problem

Write a solution to swap the seat ID of every two consecutive students.

If the number of students is odd, the ID of the last student should not be swapped.

Return the result table ordered by `id` in ascending order.

## Table: `Seat`

| Column Name | Type    |
| ----------- | ------- |
| `id`        | int     |
| `student`   | varchar |

`id` is the primary key (a column with unique values) for this table.

Each row of this table indicates the name and ID of a student.

The ID sequence always starts from `1` and increments continuously.

## Example 1

**Input:**

**Seat table:**

| id | student |
| -- | ------- |
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |

**Output:**

| id | student |
| -- | ------- |
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |

**Explanation:**

**Seats 1 and 2:**

- Abbot originally occupies seat 1.
- Doris originally occupies seat 2.
- Their seat IDs are swapped.
- Doris moves to seat 1, and Abbot moves to seat 2.

**Seats 3 and 4:**

- Emerson originally occupies seat 3.
- Green originally occupies seat 4.
- Their seat IDs are swapped.
- Green moves to seat 3, and Emerson moves to seat 4.

**Seat 5:**

- Jeames occupies seat 5.
- Since there is an odd number of students, the last student's seat remains unchanged.

## Expected Result

The output must contain:

- `id`
- `student`

The seat IDs must be exchanged in consecutive pairs:

- Seat `1` with seat `2`
- Seat `3` with seat `4`
- Seat `5` with seat `6`
- And so on.

If the total number of students is odd, the final student must retain their original seat ID.

Return the result ordered by `id` in ascending order.