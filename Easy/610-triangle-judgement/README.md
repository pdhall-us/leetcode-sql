# 610. Triangle Judgement

**Difficulty:** Easy

## Problem

Report for every three line segments whether they can form a triangle.

Return the result table in any order.

## Table: `Triangle`

| Column Name | Type |
| ----------- | ---- |
| `x`         | int  |
| `y`         | int  |
| `z`         | int  |

In SQL, `(x, y, z)` is the primary key (a combination of columns with unique values) for this table.

Each row of this table contains the lengths of three line segments.

## Example 1

**Input:**

**Triangle table:**

| x  | y  | z  |
| -- | -- | -- |
| 13 | 15 | 30 |
| 10 | 20 | 15 |

**Output:**

| x  | y  | z  | triangle |
| -- | -- | -- | -------- |
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |

**Explanation:**

**Row 1: (13, 15, 30)**

- `13 + 15 = 28`, which is not greater than `30`.
- Therefore, these three line segments cannot form a triangle.
- Result: `No`

**Row 2: (10, 20, 15)**

- `10 + 20 > 15`
- `10 + 15 > 20`
- `20 + 15 > 10`
- All three conditions are satisfied.
- Result: `Yes`

## Triangle Inequality Rule

Three line segments can form a triangle only if all three conditions are satisfied:

1. `x + y > z`
2. `x + z > y`
3. `y + z > x`

If all conditions are true, the result is `Yes`.

Otherwise, the result is `No`.

## Expected Result

The output must contain:

- `x`
- `y`
- `z`
- `triangle`

The `triangle` column must contain either `Yes` or `No`.

Return the result in any order.