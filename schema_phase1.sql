CREATE SCHEMA project440;
USE project440;
CREATE USER 'pyconn'@'127.0.0.1' IDENTIFIED BY '1234';
GRANT SELECT, INSERT, UPDATE ON project440.* TO 'pyconn'@'127.0.0.1';
FLUSH PRIVILEGES;
CREATE TABLE user (
  username varchar(255) PRIMARY KEY,
  password varchar(255),
  firstName varchar(255),
  lastName varchar(255),
  email varchar(255),
  phone varchar(255),
  CONSTRAINT c_user UNIQUE (username),
  CONSTRAINT u_email UNIQUE (email),
  CONSTRAINT u_phone UNIQUE (phone)
  );

INSERT INTO user (username, password, firstName, lastName, email, phone)
VALUES ("123", "a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3", "Test", "User","user@test.com", 1234555);