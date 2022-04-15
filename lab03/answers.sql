-- Exercise 1 (done for you):
SELECT * FROM users;

-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;

-- Exercise 3
SELECT id, first_name, last_name
FROM users
ORDER BY last_name;

-- Exercise 4
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26;

-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26 or user_id = 12;

-- Exercise 6
SELECT count(*)
FROM posts;

-- Exercise 7
SELECT user_id, count(*)
FROM comments
GROUP BY user_id
ORDER BY count(*) desc;

-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users ON
posts.user_id = users.user_id
WHERE users.id = 12 or users.id = 26;

-- Exercise 9
SELECT p.id, p.pub_data, f.following_id
FROM following f
INNER JOIN posts p ON
p.user_id = f.following_id
WHERE f.user_id = 26;

-- Exercise 10
#optional

-- Exercise 11
INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES (26, 219, now());
INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES (26, 220, now());
INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES (26, 221, now());

-- Exercise 12
DELETE FROM bookmarks
WHERE user_id = 26 and post_id IN (219, 220, 221)

-- Exercise 13
UPDATE users SET email='knick2022@gmail.com' where id = 26;

-- Exercise 14
FROM posts p
INNER JOIN comments c ON
p.id = c.post_id
WHERE p.user_id = 26
GROUP BY p.id, p.user_id, p.caption
ORDER BY count(c.id) desc;
