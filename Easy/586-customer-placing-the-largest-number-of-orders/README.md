# 586. Customer Placing the Largest Number of Orders

**Difficulty:** Easy

## Problem

Write a solution to find the `customer_number` for the customer who has placed the largest number of orders.

The test cases are generated so that exactly one customer will have placed more orders than any other customer.

The result format is shown in the following example.

## Table: `Orders`

| Column Name     | Type |
| --------------- | ---- |
| order_number    | int  |
| customer_number | int  |

`order_number` is the primary key (a column with unique values) for this table.

This table contains information about the order ID and the customer ID.

## Example 1

**Input:**

**Orders table:**

| order_number | customer_number |
| ------------ | --------------- |
| 1            | 1               |
| 2            | 2               |
| 3            | 3               |
| 4            | 3               |

**Output:**

| customer_number |
| --------------- |
| 3               |

**Explanation:**

The customer with number `3` has two orders, which is greater than the number of orders placed by customers `1` and `2`, who each have one order.

The number of orders placed by each customer is:

| customer_number | Number of Orders |
| --------------- | ---------------- |
| 1               | 1                |
| 2               | 1                |
| 3               | 2                |

Therefore, customer `3` has placed the largest number of orders.

## Follow-up

What if more than one customer has the largest number of orders?

Can you find all the `customer_number` values in this case?

## Expected Result

The output must contain:

- `customer_number`

The result must satisfy the following conditions:

1. Count the number of orders placed by each customer.
2. Identify the customer who placed the maximum number of orders.
3. Return the `customer_number` of that customer.
4. The main problem guarantees exactly one customer has the largest number of orders.
5. For the follow-up, consider how to return all customers tied for the maximum number of orders.