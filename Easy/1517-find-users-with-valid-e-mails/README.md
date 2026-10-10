# 1517. Find Users With Valid E-Mails

**Difficulty:** Easy

## Problem

Write a solution to find the users who have valid emails.

A valid email has a prefix name and a domain where:

- The **prefix name** is a string that may contain letters (uppercase or lowercase), digits, underscores `_`, periods `.`, and/or dashes `-`.
- The prefix name must start with a letter.
- The **domain** is `@leetcode.com`.

Return the result table in any order.

## Table: `Users`

| Column Name | Type    |
| ----------- | ------- |
| `user_id`   | int     |
| `name`      | varchar |
| `mail`      | varchar |

`user_id` is the primary key (a column with unique values) for this table.

This table contains information about the users signed up on a website.

Some emails are invalid.

## Example 1

**Input:**

**Users table:**

| user_id | name      | mail                    |
| ------- | --------- | ----------------------- |
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@leetcode.com    |
| 7       | Shapiro   | .shapo@leetcode.com     |

**Output:**

| user_id | name      | mail                    |
| ------- | --------- | ----------------------- |
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 6       | David     | david69@leetcode.com    |

**Explanation:**

**Winston:**

- Email: `winston@leetcode.com`
- The prefix starts with a letter.
- The domain is `@leetcode.com`.
- The email is valid.

**Jonathan:**

- Email: `jonathanisgreat`
- The required domain `@leetcode.com` is missing.
- The email is invalid.

**Annabelle:**

- Email: `bella-@leetcode.com`
- The prefix starts with a letter.
- A dash `-` is allowed in the prefix.
- The email is valid.

**Sally:**

- Email: `sally.come@leetcode.com`
- The prefix starts with a letter.
- A period `.` is allowed in the prefix.
- The email is valid.

**Marwan:**

- Email: `quarz#2020@leetcode.com`
- The prefix contains `#`, which is not an allowed character.
- The email is invalid.

**David:**

- Email: `david69@leetcode.com`
- The prefix starts with a letter.
- Digits are allowed after the first character.
- The email is valid.

**Shapiro:**

- Email: `.shapo@leetcode.com`
- The prefix starts with a period instead of a letter.
- The email is invalid.

## Expected Result

The output must contain:

- `user_id`
- `name`
- `mail`

Only users with valid email addresses should appear in the result.

A valid email must satisfy all the following conditions:

1. The prefix must start with an English letter (`A-Z` or `a-z`).
2. The remaining prefix characters may contain letters, digits, underscores, periods, or dashes.
3. The email must end with exactly `@leetcode.com`.
4. No additional characters are allowed after the domain.

Return the result in any order.