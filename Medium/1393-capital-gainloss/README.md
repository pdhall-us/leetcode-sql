# 1393. Capital Gain/Loss

**Difficulty:** Medium

## Problem

Write a solution to report the **Capital gain/loss** for each stock.

The capital gain/loss of a stock is the total gain or loss after buying and selling the stock one or many times.

Return the result table in any order.

## Table: `Stocks`

| Column Name   | Type    |
| ------------- | ------- |
| stock_name    | varchar |
| operation     | enum    |
| operation_day | int     |
| price         | int     |

`(stock_name, operation_day)` is the primary key (a combination of columns with unique values) for this table.

The `operation` column is an ENUM (category) of type `('Sell', 'Buy')`.

Each row of this table indicates that the stock with the given `stock_name` had an operation on the `operation_day` at the specified `price`.

It is guaranteed that:

- Each `Sell` operation has a corresponding `Buy` operation on a previous day.
- Each `Buy` operation has a corresponding `Sell` operation on a later day.
- The operations for each stock alternate between `Buy` and `Sell`.
- The first operation for each stock is always `Buy`.

## Example 1

**Input:**

**Stocks table:**

| stock_name    | operation | operation_day | price |
| ------------- | --------- | ------------- | ----- |
| Leetcode      | Buy       | 1             | 1000  |
| Corona Masks  | Buy       | 2             | 10    |
| Leetcode      | Sell      | 5             | 9000  |
| Handbags      | Buy       | 17            | 30000 |
| Corona Masks  | Sell      | 3             | 1010  |
| Corona Masks  | Buy       | 4             | 1000  |
| Corona Masks  | Sell      | 5             | 500   |
| Corona Masks  | Buy       | 6             | 1000  |
| Handbags      | Sell      | 29            | 7000  |
| Corona Masks  | Sell      | 10            | 10000 |

**Output:**

| stock_name   | capital_gain_loss |
| ------------ | ----------------- |
| Corona Masks | 9500              |
| Leetcode     | 8000              |
| Handbags     | -23000            |

**Explanation:**

**Leetcode:**

- Bought on day 1 for `1000`.
- Sold on day 5 for `9000`.
- Capital gain/loss = `9000 - 1000 = 8000`.

**Handbags:**

- Bought on day 17 for `30000`.
- Sold on day 29 for `7000`.
- Capital gain/loss = `7000 - 30000 = -23000`.

**Corona Masks:**

- Bought on day 2 for `10` and sold on day 3 for `1010`.
- Bought on day 4 for `1000` and sold on day 5 for `500`.
- Bought on day 6 for `1000` and sold on day 10 for `10000`.

Capital gain/loss:

- First transaction: `1010 - 10 = 1000`.
- Second transaction: `500 - 1000 = -500`.
- Third transaction: `10000 - 1000 = 9000`.

Total capital gain/loss:

`1000 - 500 + 9000 = 9500`

## Expected Result

The output must contain:

- `stock_name`
- `capital_gain_loss`

The result must satisfy the following conditions:

1. Identify every unique stock.
2. Treat each `Buy` operation as a negative amount.
3. Treat each `Sell` operation as a positive amount.
4. Calculate the total selling amount for each stock.
5. Calculate the total buying amount for each stock.
6. Subtract total buying amount from total selling amount.
7. Return positive values for profits and negative values for losses.
8. Return exactly one row for each stock.
9. Return the result in any order.