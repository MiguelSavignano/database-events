CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL,
    PRIMARY KEY (id)
);

-- DATA test
INSERT INTO users (name, createdAt, updatedAt) VALUES ('name', NOW(), NOW());

-- SCHEDULE EVENT
SET GLOBAL event_scheduler = ON;

-- TEST schedule delete every minute
CREATE EVENT remove_old_users_every_minute
ON SCHEDULE EVERY 1 MINUTE
DO
DELETE FROM users WHERE createdAt < NOW() - INTERVAL 1 MINUTE;

-- SQL to execute schedule every day and remove old data

-- CREATE EVENT remove_old_users_every_day
-- ON SCHEDULE EVERY 1 DAY
-- STARTS (TIMESTAMP(CURRENT_DATE) + INTERVAL 1 DAY)
-- DO
-- DELETE FROM users WHERE createdAt < NOW() - INTERVAL 1 YEAR;


-- SELECT * FROM users;
