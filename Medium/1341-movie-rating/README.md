# 1341. Movie Rating

**Difficulty:** Medium

## Problem

Write a solution to:

1. Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
2. Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.

The result is returned as a single column named `results`.

## Table: `Movies`

| Column Name | Type    |
| ----------- | ------- |
| `movie_id`  | int     |
| `title`     | varchar |

`movie_id` is the primary key (a column with unique values) for this table.

`title` is the name of the movie.

## Table: `Users`

| Column Name | Type    |
| ----------- | ------- |
| `user_id`   | int     |
| `name`      | varchar |

`user_id` is the primary key (a column with unique values) for this table.

The column `name` has unique values.

## Table: `MovieRating`

| Column Name | Type |
| ----------- | ---- |
| `movie_id`  | int  |
| `user_id`   | int  |
| `rating`    | int  |
| `created_at`| date |

`(movie_id, user_id)` is the primary key (a combination of columns with unique values) for this table.

Each row contains the rating given by a user to a movie.

`created_at` represents the date when the rating was created.

## Example 1

**Input:**

**Movies table:**

| movie_id | title    |
| -------- | -------- |
| 1        | Avengers |
| 2        | Frozen 2 |
| 3        | Joker    |

**Users table:**

| user_id | name   |
| ------- | ------ |
| 1       | Daniel |
| 2       | Monica |
| 3       | Maria  |
| 4       | James  |

**MovieRating table:**

| movie_id | user_id | rating | created_at |
| -------- | ------- | ------ | ---------- |
| 1        | 1       | 3      | 2020-01-12 |
| 1        | 2       | 4      | 2020-02-11 |
| 1        | 3       | 2      | 2020-02-12 |
| 1        | 4       | 1      | 2020-01-01 |
| 2        | 1       | 5      | 2020-02-17 |
| 2        | 2       | 2      | 2020-02-01 |
| 2        | 3       | 2      | 2020-03-01 |
| 3        | 1       | 3      | 2020-02-22 |
| 3        | 2       | 4      | 2020-02-25 |

**Output:**

| results |
| ------- |
| Daniel  |
| Frozen 2 |

**Explanation:**

**1. User with the greatest number of movie ratings**

| User   | Movies Rated |
| ------ | ------------ |
| Daniel | 3            |
| Monica | 3            |
| Maria  | 2            |
| James  | 1            |

- Daniel and Monica have both rated 3 movies.
- Since there is a tie, choose the lexicographically smaller name.
- Daniel comes before Monica alphabetically.

Therefore, the result is `Daniel`.

**2. Movie with the highest average rating in February 2020**

| Movie    | February Ratings | Average Rating |
| -------- | ---------------- | -------------- |
| Avengers | 4, 2             | 3.00           |
| Frozen 2 | 5, 2             | 3.50           |
| Joker    | 3, 4             | 3.50           |

- Frozen 2 and Joker both have an average rating of `3.50`.
- Since there is a tie, choose the lexicographically smaller movie title.
- Frozen 2 comes before Joker alphabetically.

Therefore, the result is `Frozen 2`.

## Expected Result

The output must contain:

- `results`

The result must contain exactly two rows:

1. The name of the user who rated the most movies.
2. The title of the movie with the highest average rating in February 2020.

For ties, select the lexicographically smaller name or title.