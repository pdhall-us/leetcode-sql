# 1587. Bank Account Summary II

**Difficulty:** Easy

## Problem

Write a solution to report the name and balance of users with a balance higher than `10000`.

The balance of an account is equal to the sum of the amounts of all transactions involving that account.

Return the result table in any order.

## Table: `Users`

| Column Name | Type    |
| ----------- | ------- |
| account     | int     |
| name        | varchar |

`account` is the primary key (a column with unique values) for this table.

Each row of this table contains the account number of each user in the bank.

There will be no two users having the same name in the table.

## Table: `Transactions`

| Column Name    | Type |
| -------------- | ---- |
| trans_id       | int  |
| account        | int  |
| amount         | int  |
| transacted_on  | date |

`trans_id` is the primary key (a column with unique values) for this table.

Each row of this table contains all changes made to the user account.

The `amount` is positive if the user received money and negative if they transferred money.

All accounts start with a balance of `0`.

## Example 1

**Input:**

**Users table:**

| account | name     |
| ------- | -------- |
| 900001  | Alice    |
| 900002  | Bob      |
| 900003  | Charlie  |

**Transactions table:**

| trans_id | account | amount | transacted_on |
| -------- | ------- | ------ | ------------- |
| 1        | 900001  | 7000   | 2020-08-01    |
| 2        | 900001  | 7000   | 2020-09-01    |
| 3        | 900001  | -3000  | 2020-09-02    |
| 4        | 900002  | 1000   | 2020-09-12    |
| 5        | 900003  | 6000   | 2020-08-07    |
| 6        | 900003  | 6000   | 2020-09-07    |
| 7        | 900003  | -4000  | 2020-09-11    |

**Output:**

| name  | balance |
| ----- | ------- |
| Alice | 11000   |

**Explanation:**

**Alice:**

- Received `7000` on `2020-08-01`.
- Received `7000` on `2020-09-01`.
- Transferred `3000` on `2020-09-02`.
- Final balance = `7000 + 7000 - 3000 = 11000`.
- Since the balance is greater than `10000`, Alice is included.

**Bob:**

- Received `1000`.
- Final balance = `1000`.
- Since the balance is not greater than `10000`, Bob is excluded.

**Charlie:**

- Received `6000` on `2020-08-07`.
- Received `6000` on `2020-09-07`.
- Transferred `4000` on `2020-09-11`.
- Final balance = `6000 + 6000 - 4000 = 8000`.
- Since the balance is not greater than `10000`, Charlie is excluded.

## Expected Result

The output must contain:

- `name`
- `balance`

The result must satisfy the following conditions:

1. Identify each user's bank account.
2. Calculate the sum of all transaction amounts for each account.
3. Treat positive amounts as money received.
4. Treat negative amounts as money transferred.
5. Include only users whose final balance is strictly greater than `10000`.
6. Exclude users whose balance is equal to or less than `10000`.
7. Return each qualifying user exactly once.
8. Return the result in any order.