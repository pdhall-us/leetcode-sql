# 1321. Restaurant Growth

**Difficulty:** Medium

## Problem

You are the restaurant owner and you want to analyze a possible expansion.

There will be at least one customer every day.

Write a solution to compute the moving average of how much the customer paid in a seven-day window (i.e., current day + 6 days before).

`average_amount` should be rounded to two decimal places.

Return the result table ordered by `visited_on` in ascending order.

## Table: `Customer`

| Column Name | Type |
| ----------- | ---- |
| `customer_id` | int |
| `name` | varchar |
| `visited_on` | date |
| `amount` | int |

In SQL, `(customer_id, visited_on)` is the primary key for this table.

This table contains data about customer transactions in a restaurant.

`visited_on` is the date on which the customer visited the restaurant.

`amount` is the total paid by a customer.

## Example 1

**Input:**

**Customer table:**

| customer_id | name | visited_on | amount |
| ----------- | ---- | ---------- | ------ |
| 1 | Jhon | 2019-01-01 | 100 |
| 2 | Daniel | 2019-01-02 | 110 |
| 3 | Jade | 2019-01-03 | 120 |
| 4 | Khaled | 2019-01-04 | 130 |
| 5 | Winston | 2019-01-05 | 110 |
| 6 | Elvis | 2019-01-06 | 140 |
| 7 | Anna | 2019-01-07 | 150 |
| 8 | Maria | 2019-01-08 | 80 |
| 9 | Zoya | 2019-01-09 | 110 |
| 1 | Jhon | 2019-01-10 | 130 |
| 3 | Jade | 2019-01-10 | 150 |

**Output:**

| visited_on | amount | average_amount |
| ---------- | ------ | -------------- |
| 2019-01-07 | 860 | 122.86 |
| 2019-01-08 | 840 | 120.00 |
| 2019-01-09 | 840 | 120.00 |
| 2019-01-10 | 1000 | 142.86 |

**Explanation:**

**2019-01-07:**

The first seven-day window covers January 1 to January 7.

- Total amount = `100 + 110 + 120 + 130 + 110 + 140 + 150 = 860`
- Average amount = `860 / 7 = 122.86`

**2019-01-08:**

The seven-day window covers January 2 to January 8.

- Total amount = `110 + 120 + 130 + 110 + 140 + 150 + 80 = 840`
- Average amount = `840 / 7 = 120.00`

**2019-01-09:**

The seven-day window covers January 3 to January 9.

- Total amount = `120 + 130 + 110 + 140 + 150 + 80 + 110 = 840`
- Average amount = `840 / 7 = 120.00`

**2019-01-10:**

The seven-day window covers January 4 to January 10.

Two customers visited on January 10:

- Jhon paid `130`.
- Jade paid `150`.

The total amount for January 10 is `280`.

- Total amount = `130 + 110 + 140 + 150 + 80 + 110 + 280 = 1000`
- Average amount = `1000 / 7 = 142.86`

## Expected Result

The output must contain:

- `visited_on`
- `amount`
- `average_amount`

The result must satisfy the following conditions:

1. Calculate the total amount paid by all customers on each date.
2. Calculate the moving total for the current day and the previous six days.
3. Calculate the seven-day moving average.
4. Round `average_amount` to two decimal places.
5. Include only dates for which a complete seven-day window is available.
6. Return the result ordered by `visited_on` in ascending order.