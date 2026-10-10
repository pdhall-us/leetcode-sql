# 602. Friend Requests II: Who Has the Most Friends

**Difficulty:** Medium

## Problem

Write a solution to find the people who have the most friends and the most friends number.

The test cases are generated so that only one person has the most friends.

The result format is shown in the following example.

## Table: `RequestAccepted`

| Column Name | Type |
| ----------- | ---- |
| `requester_id` | int |
| `accepter_id` | int |
| `accept_date` | date |

`(requester_id, accepter_id)` is the primary key (a combination of columns with unique values) for this table.

This table contains the IDs of the people who have sent and accepted friend requests, and the date when the requests were accepted.

## Example 1

**Input:**

**RequestAccepted table:**

| requester_id | accepter_id | accept_date |
| ------------ | ----------- | ----------- |
| 1 | 2 | 2016-06-03 |
| 1 | 3 | 2016-06-08 |
| 2 | 3 | 2016-06-08 |
| 3 | 4 | 2016-06-09 |

**Output:**

| id | num |
| -- | --- |
| 3 | 3 |

**Explanation:**

The friendship connections are:

- Person 1 is friends with Person 2 and Person 3.
- Person 2 is friends with Person 1 and Person 3.
- Person 3 is friends with Person 1, Person 2, and Person 4.
- Person 4 is friends with Person 3.

The number of friends for each person is:

| Person ID | Number of Friends |
| --------- | ----------------- |
| 1 | 2 |
| 2 | 2 |
| 3 | 3 |
| 4 | 1 |

Person 3 has the most friends, with a total of 3.

Therefore, the result is:

- `id = 3`
- `num = 3`

## Follow-up

In the real world, multiple people could have the same maximum number of friends.

Could you find all these people in such cases?

## Expected Result

The output must contain:

- `id`
- `num`

The `id` column represents the ID of the person who has the most friends.

The `num` column represents the total number of friends that person has.

Friendships must be counted in both directions:

1. A requester is a friend of the accepter.
2. An accepter is a friend of the requester.
3. Each accepted request contributes one friend to both people.
4. The person with the highest total number of friends must be returned.

The main problem guarantees that only one person has the maximum number of friends.