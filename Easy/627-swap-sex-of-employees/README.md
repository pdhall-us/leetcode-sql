# 627. Swap Sex of Employees

**Difficulty:** Easy

## Problem

Write a solution to swap all `'f'` and `'m'` values (i.e., change all `'f'` values to `'m'` and vice versa) with a single update statement and no intermediate temporary tables.

Note that you must write a single update statement. Do not write any select statement for this problem.

## Table: `Salary`

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |
| sex         | ENUM    |
| salary      | int     |

`id` is the primary key (a column with unique values) for this table.

The `sex` column is an ENUM (category) value of type `('m', 'f')`.

The table contains information about an employee.

## Example 1

**Input:**

**Salary table:**

| id | name | sex | salary |
| -- | ---- | --- | ------ |
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |

**Output:**

| id | name | sex | salary |
| -- | ---- | --- | ------ |
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |

**Explanation:**

**Employee A:**

- Original `sex` value is `'m'`.
- Updated `sex` value is `'f'`.
- All other column values remain unchanged.

**Employee B:**

- Original `sex` value is `'f'`.
- Updated `sex` value is `'m'`.
- All other column values remain unchanged.

**Employee C:**

- Original `sex` value is `'m'`.
- Updated `sex` value is `'f'`.
- All other column values remain unchanged.

**Employee D:**

- Original `sex` value is `'f'`.
- Updated `sex` value is `'m'`.
- All other column values remain unchanged.

## Expected Result

The `Salary` table must be updated according to the following conditions:

1. Change every `'m'` value in the `sex` column to `'f'`.
2. Change every `'f'` value in the `sex` column to `'m'`.
3. Update all employee records.
4. Do not modify the `id`, `name`, or `salary` columns.
5. Use exactly one `UPDATE` statement.
6. Do not use intermediate temporary tables.
7. Do not write a `SELECT` statement.
8. Modify the existing table directly instead of returning a separate result table.