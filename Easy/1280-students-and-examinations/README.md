# 1280. Students and Examinations

**Difficulty:** Easy

## Problem

Write a solution to find the number of times each student attended each exam.

Return the result table ordered by `student_id` and `subject_name`.

## Table: `Students`

| Column Name    | Type    |
| -------------- | ------- |
| `student_id`   | int     |
| `student_name` | varchar |

`student_id` is the primary key (a column with unique values) for this table.

Each row of this table contains the ID and the name of one student in the school.

## Table: `Subjects`

| Column Name    | Type    |
| -------------- | ------- |
| `subject_name` | varchar |

`subject_name` is the primary key (a column with unique values) for this table.

Each row of this table contains the name of one subject in the school.

## Table: `Examinations`

| Column Name    | Type    |
| -------------- | ------- |
| `student_id`   | int     |
| `subject_name` | varchar |

This table may contain duplicate rows.

Each student from the `Students` table takes every course from the `Subjects` table.

Each row of this table indicates that a student with ID `student_id` attended the exam of `subject_name`.

## Example 1

**Input:**

**Students table:**

| student_id | student_name |
| ---------: | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

**Subjects table:**

| subject_name |
| ------------ |
| Math         |
| Physics      |
| Programming  |

**Examinations table:**

| student_id | subject_name |
| ---------: | ------------ |
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

**Output:**

| student_id | student_name | subject_name | attended_exams |
| ---------: | ------------ | ------------ | -------------: |
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

**Explanation:**

The result must include every combination of student and subject.

- Alice attended the Math exam 3 times, Physics 2 times, and Programming 1 time.
- Bob attended the Math exam 1 time, Physics 0 times, and Programming 1 time.
- Alex did not attend any exams, so all his attendance counts are 0.
- John attended each subject's exam exactly once.

The result is ordered by `student_id` and `subject_name`.