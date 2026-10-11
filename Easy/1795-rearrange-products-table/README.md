# 1795. Rearrange Products Table

**Difficulty:** Easy

## Problem

Write a solution to rearrange the `Products` table so that each row has `(product_id, store, price)`.

If a product is not available in a store, do not include a row for that product and store combination.

Return the result table in any order.

## Table: `Products`

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| store1      | int  |
| store2      | int  |
| store3      | int  |

`product_id` is the primary key (a column with unique values) for this table.

Each row in this table indicates the product's price in three different stores: `store1`, `store2`, and `store3`.

If the product is not available in a store, the price will be `NULL` in that store's column.

## Example 1

**Input:**

**Products table:**

| product_id | store1 | store2 | store3 |
| ---------- | ------ | ------ | ------ |
| 0          | 95     | 100    | 105    |
| 1          | 70     | NULL   | 80     |

**Output:**

| product_id | store  | price |
| ---------- | ------ | ----- |
| 0          | store1 | 95    |
| 0          | store2 | 100   |
| 0          | store3 | 105   |
| 1          | store1 | 70    |
| 1          | store3 | 80    |

**Explanation:**

**Product 0:**

- Available in `store1` for `95`.
- Available in `store2` for `100`.
- Available in `store3` for `105`.
- Therefore, three rows are returned for product `0`.

**Product 1:**

- Available in `store1` for `70`.
- Not available in `store2` because its price is `NULL`.
- Available in `store3` for `80`.
- Therefore, only two rows are returned for product `1`.

The row for product `1` in `store2` is excluded because the product is not available in that store.

## Expected Result

The output must contain:

- `product_id`
- `store`
- `price`

The result must satisfy the following conditions:

1. Convert the store columns into individual rows.
2. Preserve the `product_id` for each product.
3. Return the store name in the `store` column.
4. Return the corresponding product price in the `price` column.
5. Exclude product-store combinations where the price is `NULL`.
6. Include every available product-store combination.
7. Return one row per product and available store.
8. Return the result in any order.