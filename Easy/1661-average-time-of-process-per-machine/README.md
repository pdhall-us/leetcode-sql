# 1661. Average Time of Process per Machine

**Difficulty:** Easy

## Problem

There is a factory website that has several machines, each running the same number of processes.

Write a solution to find the average time each machine takes to complete a process.

The time to complete a process is the `end` timestamp minus the `start` timestamp.

The average time is calculated by dividing the total time taken to complete every process on the machine by the number of processes that were run.

The resulting table should have the `machine_id` along with the average time as `processing_time`, rounded to 3 decimal places.

Return the result table in any order.

## Table: `Activity`

| Column Name     | Type    |
| --------------- | ------- |
| `machine_id`    | int     |
| `process_id`    | int     |
| `activity_type` | enum    |
| `timestamp`     | float   |

`(machine_id, process_id, activity_type)` is the primary key (a combination of columns with unique values) of this table.

The `machine_id` is the ID of a machine.

The `process_id` is the ID of a process running on the machine.

The `activity_type` is an ENUM with values:

- `start`
- `end`

The `timestamp` is a float representing the current time in seconds.

`start` means the machine starts the process at the given timestamp, and `end` means the machine finishes the process at the given timestamp.

The `start` timestamp will always be before the `end` timestamp for every `(machine_id, process_id)` pair.

It is guaranteed that every `(machine_id, process_id)` pair has a `start` and an `end` timestamp.

## Example 1

**Input:**

**Activity table:**

| machine_id | process_id | activity_type | timestamp |
| ---------: | ---------: | ------------- | --------: |
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |

**Output:**

| machine_id | processing_time |
| ---------: | --------------: |
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |

**Explanation:**

There are 3 machines, and each machine runs 2 processes.

**Machine 0:**

- Process 0: `1.520 - 0.712 = 0.808`
- Process 1: `4.120 - 3.140 = 0.980`
- Average processing time: `(0.808 + 0.980) / 2 = 0.894`

**Machine 1:**

- Process 0: `1.550 - 0.550 = 1.000`
- Process 1: `1.420 - 0.430 = 0.990`
- Average processing time: `(1.000 + 0.990) / 2 = 0.995`

**Machine 2:**

- Process 0: `4.512 - 4.100 = 0.412`
- Process 1: `5.000 - 2.500 = 2.500`
- Average processing time: `(0.412 + 2.500) / 2 = 1.456`