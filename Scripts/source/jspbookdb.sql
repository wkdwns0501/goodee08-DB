CREATE DATABASE jspbookdb;

SHOW DATABASES;

USE jspbookdb;

CREATE TABLE IF NOT EXISTS member (
	id VARCHAR(20),
	passwd VARCHAR(20),
	name VARCHAR(30),
	PRIMARY KEY (id)
);

SELECT * FROM member;

INSERT INTO member(id, passwd, name) VALUES ('admin', '1234', '관리자');

DROP TABLE member;

CREATE TABLE IF NOT EXISTS member (
	id VARCHAR(20),
  passwd VARCHAR(20),
  name VARCHAR(30),
  PRIMARY KEY (id)
);

INSERT INTO member (id, passwd, name) 
VALUES 
	('1', '1234', '홍길순'),
	('2', '1235', '홍길동');

SELECT * FROM member;