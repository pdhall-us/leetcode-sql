# 1741. Find Total Time Spent by Each Employee

**Difficulty:** Easy

## Problem

Write a solution to calculate the total time in minutes spent by each employee on each day at the office.

Note that within one day, an employee can enter and leave more than once.

The time spent in the office for a single entry is `out_time - in_time`.

Return the result table in any order.

## Table: `Employees`

| Column Name | Type |
| ----------- | ---- |
| emp_id      | int  |
| event_day   | date |
| in_time     | int  |
| out_time    | int  |

`(emp_id, event_day, in_time)` is the primary key (a combination of columns with unique values) for this table.

The table shows the employees' entries and exits in an office.

`event_day` is the day on which this event happened.

`in_time` is the minute at which the employee entered the office.

`out_time` is the minute at which the employee left the office.

`in_time` and `out_time` are between `1` and `1440`.

It is guaranteed that `in_time < out_time`.

## Example 1

**Input:**

**Employees table:**

| emp_id | event_day  | in_time | out_time |
| ------ | ---------- | ------- | -------- |
| 1      | 2020-11-28 | 4       | 32       |
| 1      | 2020-11-28 | 55      | 200      |
| 1      | 2020-12-03 | 1       | 42       |
| 2      | 2020-11-28 | 3       | 33       |
| 2      | 2020-12-09 | 47      | 74       |

**Output:**

| day        | emp_id | total_time |
| ---------- | ------ | ---------- |
| 2020-11-28 | 1      | 173        |
| 2020-11-28 | 2      | 30         |
| 2020-12-03 | 1      | 41         |
| 2020-12-09 | 2      | 27         |

**Explanation:**

**Employee 1 — 2020-11-28:**

- First entry: `4` to `32`.
- Time spent = `32 - 4 = 28` minutes.
- Second entry: `55` to `200`.
- Time spent = `200 - 55 = 145` minutes.
- Total time = `28 + 145 = 173` minutes.

**Employee 1 — 2020-12-03:**

- Entered at minute `1`.
- Left at minute `42`.
- Total time = `42 - 1 = 41` minutes.

**Employee 2 — 2020-11-28:**

- Entered at minute `3`.
- Left at minute `33`.
- Total time = `33 - 3 = 30` minutes.

**Employee 2 — 2020-12-09:**

- Entered at minute `47`.
- Left at minute `74`.
- Total time = `74 - 47 = 27` minutes.

## Expected Result

The output must contain:

- `day`
- `emp_id`
- `total_time`

The result must satisfy the following conditions:

1. Identify each unique combination of employee and day.
2. Calculate the time spent during each office visit as `out_time - in_time`.
3. Add the durations of all visits made by the same employee on the same day.
4. Calculate the total time separately for each employee and date.
5. Return the date column as `day`.
6. Return the calculated duration as `total_time`.
7. Return exactly one row per employee per day.
8. Return the result in any order.