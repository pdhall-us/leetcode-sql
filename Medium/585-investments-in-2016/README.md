# 585. Investments in 2016

**Difficulty:** Medium

## Problem

Write a solution to report the sum of all total investment values in 2016 (`tiv_2016`), for all policyholders who:

1. Have the same `tiv_2015` value as one or more other policyholders.
2. Are not located in the same city as any other policyholder (that is, the `(lat, lon)` attribute pairs must be unique).

Round `tiv_2016` to two decimal places.

## Table: `Insurance`

| Column Name | Type |
| ----------- | ----- |
| `pid` | int |
| `tiv_2015` | float |
| `tiv_2016` | float |
| `lat` | float |
| `lon` | float |

`pid` is the primary key (a column with unique values) for this table.

Each row of this table contains information about one policyholder, where:

- `pid` is the policyholder's ID.
- `tiv_2015` is the total investment value in 2015.
- `tiv_2016` is the total investment value in 2016.
- `lat` is the latitude of the policyholder's city.
- `lon` is the longitude of the policyholder's city.

It is guaranteed that `lat` and `lon` are not NULL.

## Example 1

**Input:**

**Insurance table:**

| pid | tiv_2015 | tiv_2016 | lat | lon |
| --- | -------- | -------- | --- | --- |
| 1 | 10 | 5 | 10 | 10 |
| 2 | 20 | 20 | 20 | 20 |
| 3 | 10 | 30 | 20 | 20 |
| 4 | 10 | 40 | 40 | 40 |

**Output:**

| tiv_2016 |
| -------- |
| 45.00 |

**Explanation:**

**Policyholder 1:**

- Has `tiv_2015 = 10`, which is shared with policyholders 3 and 4.
- Has a unique location `(10, 10)`.
- Meets both conditions.
- Therefore, `tiv_2016 = 5` is included.

**Policyholder 2:**

- Has `tiv_2015 = 20`, which is not shared with any other policyholder.
- Also shares location `(20, 20)` with policyholder 3.
- Does not meet the conditions.
- Therefore, `tiv_2016 = 20` is excluded.

**Policyholder 3:**

- Has `tiv_2015 = 10`, which is shared with other policyholders.
- Shares location `(20, 20)` with policyholder 2.
- Does not have a unique location.
- Therefore, `tiv_2016 = 30` is excluded.

**Policyholder 4:**

- Has `tiv_2015 = 10`, which is shared with policyholders 1 and 3.
- Has a unique location `(40, 40)`.
- Meets both conditions.
- Therefore, `tiv_2016 = 40` is included.

**Final Calculation:**

Total investment value in 2016:

`5 + 40 = 45.00`

## Expected Result

The output must contain:

- `tiv_2016`

The result must satisfy the following conditions:

1. Include policyholders whose `tiv_2015` value appears more than once.
2. Include only policyholders whose `(lat, lon)` combination is unique.
3. Both conditions must be satisfied simultaneously.
4. Calculate the sum of `tiv_2016` for qualifying policyholders.
5. Round the final result to two decimal places.