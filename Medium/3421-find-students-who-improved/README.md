# 3421. Find Students Who Improved

**Difficulty:** Medium

## Problem

Write a solution to find the students who have shown improvement.

A student is considered to have shown improvement if they meet both of these conditions:

1. Have taken exams in the same subject on at least two different dates.
2. Their latest score in that subject is higher than their first score.

Return the result table ordered by `student_id` and `subject` in ascending order.

## Table: `Scores`

| Column Name | Type    |
| ----------- | ------- |
| student_id  | int     |
| subject     | varchar |
| score       | int     |
| exam_date   | varchar |

`(student_id, subject, exam_date)` is the primary key (a combination of columns with unique values) for this table.

Each row contains information about a student's score in a specific subject on a particular exam date.

The `score` is between `0` and `100` (inclusive).

## Example 1

**Input:**

**Scores table:**

| student_id | subject | score | exam_date  |
| ---------- | ------- | ----- | ---------- |
| 101        | Math    | 70    | 2023-01-15 |
| 101        | Math    | 85    | 2023-02-15 |
| 101        | Physics | 65    | 2023-01-15 |
| 101        | Physics | 60    | 2023-02-15 |
| 102        | Math    | 80    | 2023-01-15 |
| 102        | Math    | 85    | 2023-02-15 |
| 103        | Math    | 90    | 2023-01-15 |
| 104        | Physics | 75    | 2023-01-15 |
| 104        | Physics | 85    | 2023-02-15 |

**Output:**

| student_id | subject | first_score | latest_score |
| ---------- | ------- | ----------- | ------------ |
| 101        | Math    | 70          | 85           |
| 102        | Math    | 80          | 85           |
| 104        | Physics | 75          | 85           |

**Explanation:**

**Student 101 — Math:**

- First exam score: `70`.
- Latest exam score: `85`.
- Improvement: `85 - 70 = 15`.
- The student qualifies.

**Student 101 — Physics:**

- First exam score: `65`.
- Latest exam score: `60`.
- The score decreased.
- The student does not qualify for this subject.

**Student 102 — Math:**

- First exam score: `80`.
- Latest exam score: `85`.
- Improvement: `85 - 80 = 5`.
- The student qualifies.

**Student 103 — Math:**

- Only one exam was taken.
- At least two exam dates are required.
- The student does not qualify.

**Student 104 — Physics:**

- First exam score: `75`.
- Latest exam score: `85`.
- Improvement: `85 - 75 = 10`.
- The student qualifies.

## Expected Result

The output must contain:

- `student_id`
- `subject`
- `first_score`
- `latest_score`

The result must satisfy the following conditions:

1. Evaluate each unique combination of `student_id` and `subject`.
2. Consider only combinations with exams on at least two different dates.
3. Identify the earliest exam date for each student and subject.
4. Retrieve the score associated with the earliest exam date.
5. Identify the latest exam date for each student and subject.
6. Retrieve the score associated with the latest exam date.
7. Include only records where `latest_score > first_score`.
8. Exclude students whose scores decreased or remained unchanged.
9. Return exactly one row for each qualifying student and subject.
10. Sort the result by `student_id` and `subject` in ascending order.