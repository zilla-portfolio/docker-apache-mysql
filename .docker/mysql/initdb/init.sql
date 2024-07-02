CREATE DATABASE IF NOT EXISTS email_sender CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE email_sender;
CREATE TABLE IF NOT EXISTS emails (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE KEY (id)
);

/* Inserting some values to be read at index.php list */
INSERT INTO
emails
(
    name,
    email
)
VALUES
(
    'User Name 1',
    'useremail_1@test.com'
),
(
    'User Name 2',
    'useremail_2@test.com'
),
(
    'User Name 3',
    'useremail_3@test.com'
);