# 1527. Patients With a Condition

**Difficulty:** Easy

## Problem

Write a solution to find the `patient_id`, `patient_name`, and `conditions` of the patients who have Type I Diabetes.

Type I Diabetes always starts with the `DIAB1` prefix.

Return the result table in any order.

## Table: `Patients`

| Column Name    | Type    |
| -------------- | ------- |
| `patient_id`   | int     |
| `patient_name` | varchar |
| `conditions`   | varchar |

`patient_id` is the primary key for this table.

`conditions` contains zero or more condition codes separated by spaces.

The table contains information about patients in a hospital.

## Example 1

**Input:**

**Patients table:**

| patient_id | patient_name | conditions   |
| ---------: | ------------ | ------------ |
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

**Output:**

| patient_id | patient_name | conditions   |
| ---------: | ------------ | ------------ |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |

**Explanation:**

- Bob has a condition code starting with `DIAB1`, so he is included.
- George also has a condition code starting with `DIAB1`, so he is included.
- Daniel and Alice do not have a Type I Diabetes condition.
- Alain has `DIAB201`, which does not start with `DIAB1`, so he is not included.