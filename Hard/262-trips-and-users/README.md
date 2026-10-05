# 262. Trips and Users

**Difficulty:** Hard

## Problem

The cancellation rate is computed by dividing the number of canceled requests with unbanned users (both client and driver must not be banned) by the total number of requests with unbanned users on that day.

Write a solution to find the cancellation rate of requests with unbanned users for each day between `2013-10-01` and `2013-10-03`, inclusive.

Round the cancellation rate to two decimal places.

Return the result table in any order.

## Table: `Trips`

| Column Name | Type    |
| ----------- | ------- |
| `id`        | int     |
| `client_id` | int     |
| `driver_id` | int     |
| `city_id`   | int     |
| `status`    | enum    |
| `request_at`| varchar |

`id` is the primary key for this table.

The table contains information about taxi trips.

`client_id` and `driver_id` are foreign keys referencing `users_id` in the `Users` table.

`status` is an ENUM with the values:

- `completed`
- `cancelled_by_driver`
- `cancelled_by_client`

## Table: `Users`

| Column Name | Type |
| ----------- | ---- |
| `users_id`  | int  |
| `banned`    | enum |
| `role`      | enum |

`users_id` is the primary key for this table.

`banned` is an ENUM with the values `Yes` and `No`.

`role` is an ENUM with the values:

- `client`
- `driver`
- `partner`

## Example 1

**Input:**

**Trips table:**

| id | client_id | driver_id | city_id | status              | request_at |
| -: | --------: | --------: | ------: | ------------------- | ---------- |
| 1  | 1         | 10        | 1       | completed           | 2013-10-01 |
| 2  | 2         | 11        | 1       | cancelled_by_driver | 2013-10-01 |
| 3  | 3         | 12        | 6       | completed           | 2013-10-01 |
| 4  | 4         | 13        | 6       | cancelled_by_client | 2013-10-01 |
| 5  | 1         | 10        | 1       | completed           | 2013-10-02 |
| 6  | 2         | 11        | 6       | completed           | 2013-10-02 |
| 7  | 3         | 12        | 6       | completed           | 2013-10-02 |
| 8  | 2         | 12        | 12      | completed           | 2013-10-03 |
| 9  | 3         | 10        | 12      | completed           | 2013-10-03 |
| 10 | 4         | 13        | 12      | cancelled_by_driver | 2013-10-03 |

**Users table:**

| users_id | banned | role   |
| -------: | ------ | ------ |
| 1        | No     | client |
| 2        | Yes    | client |
| 3        | No     | client |
| 4        | No     | client |
| 10       | No     | driver |
| 11       | No     | driver |
| 12       | No     | driver |
| 13       | No     | driver |

**Output:**

| Day        | Cancellation Rate |
| ---------- | ----------------: |
| 2013-10-01 | 0.33              |
| 2013-10-02 | 0.00              |
| 2013-10-03 | 0.50              |

**Explanation:**

On `2013-10-01`, there are four requests. The request involving banned client `2` is excluded. Of the remaining three requests, one is canceled. Therefore, the cancellation rate is `1 / 3 = 0.33`.

On `2013-10-02`, the request involving banned client `2` is excluded. The remaining two requests are completed, so the cancellation rate is `0 / 2 = 0.00`.

On `2013-10-03`, the request involving banned client `2` is excluded. Of the remaining two requests, one is canceled. Therefore, the cancellation rate is `1 / 2 = 0.50`.