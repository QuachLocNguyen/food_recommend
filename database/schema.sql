-- Xóa bảng cũ nếu có (tiện cho việc chạy lại)
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS user_preferences;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS users;

-- Người dùng
CREATE TABLE users (
    user_id     SERIAL PRIMARY KEY,
    name        VARCHAR(100),
    district    VARCHAR(50),
    budget      INT
);

-- Quán ăn
CREATE TABLE restaurants (
    restaurant_id   SERIAL PRIMARY KEY,
    name            VARCHAR(100),
    district        VARCHAR(50),
    food_type       VARCHAR(50),
    avg_price       INT,
    open_time       TIME,
    close_time      TIME,
    rating          FLOAT
);

-- Đánh giá
CREATE TABLE ratings (
    rating_id       SERIAL PRIMARY KEY,
    user_id         INT REFERENCES users(user_id),
    restaurant_id   INT REFERENCES restaurants(restaurant_id),
    score           FLOAT,
    visited_at      TIMESTAMP DEFAULT NOW()
);

-- Sở thích người dùng
CREATE TABLE user_preferences (
    pref_id             SERIAL PRIMARY KEY,
    user_id             INT REFERENCES users(user_id),
    food_type           VARCHAR(50),
    preference_score    FLOAT
);