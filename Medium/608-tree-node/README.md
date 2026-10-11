# 608. Tree Node

**Difficulty:** Medium

## Problem

Each node in the tree can be one of three types:

- **"Leaf":** If the node is a leaf node.
- **"Root":** If the node is the root of the tree.
- **"Inner":** If the node is neither a leaf node nor a root node.

Write a solution to report the type of each node in the tree.

Return the result table in any order.

## Table: `Tree`

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| p_id        | int  |

`id` is the column with unique values for this table.

Each row of this table contains information about the ID of a node and the ID of its parent node in a tree.

The given structure is always a valid tree.

## Example 1

**Input:**

**Tree table:**

| id | p_id |
| -- | ---- |
| 1  | NULL |
| 2  | 1    |
| 3  | 1    |
| 4  | 2    |
| 5  | 2    |

**Output:**

| id | type  |
| -- | ----- |
| 1  | Root  |
| 2  | Inner |
| 3  | Leaf  |
| 4  | Leaf  |
| 5  | Leaf  |

**Explanation:**

- Node 1 is the root node because it has no parent.
- Node 2 is an inner node because it has a parent and also has child nodes.
- Nodes 3, 4, and 5 are leaf nodes because they have no children.

The tree structure is:

    1
   / \
  2   3
 / \
4   5

## Example 2

**Input:**

**Tree table:**

| id | p_id |
| -- | ---- |
| 1  | NULL |

**Output:**

| id | type |
| -- | ---- |
| 1  | Root |

**Explanation:**

There is only one node in the tree.

Since node 1 has no parent, it is the root node.

## Expected Result

The output must contain:

- `id`
- `type`

The result must satisfy the following conditions:

1. Identify the root node using a `NULL` parent ID.
2. Identify leaf nodes that do not have any child nodes.
3. Identify inner nodes that have both a parent and at least one child.
4. Return exactly one row for every node.
5. Classify each node as `Root`, `Inner`, or `Leaf`.
6. If the tree contains only one node, classify it as `Root`.
7. Return the result in any order.