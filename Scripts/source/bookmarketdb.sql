CREATE DATABASE bookmarketdb;

SHOW DATABASES;

USE bookmarketdb;

CREATE TABLE IF NOT EXISTS book (
	b_id VARCHAR(20),
	b_name VARCHAR(20),
	b_unitPrice INTEGER,
	b_author VARCHAR(20),
	b_description TEXT,
	b_publisher VARCHAR(20),
	b_category VARCHAR(20),
	b_unitsInStock INTEGER,
	b_releaseDate VARCHAR(20),
	b_condition VARCHAR(20),
	b_fileName VARCHAR(20),
	PRIMARY KEY (b_id)
);

DESC book;

INSERT INTO book (b_id, b_name, b_unitPrice, b_author, b_description, b_publisher, b_category, b_unitsInStock, b_releaseDate, b_condition, b_fileName)
VALUES
	('ISBN1234', 'C# 프로그래밍', 27000, '우재남', 'C#을 처음 접하는 독자를 대상으로 일대일 수업처럼 자세히 설명한 책이다. 꼭 알아야 할 핵심 개념은 기본 예제로 최대한 쉽게 설명했으며, 중요한 내용은 응용 예제, 퀴즈, 셀프 스터디, 예제 모음으로 한번 더 복습할 수 있다.', '한빛아카데미', 'IT모바일', 1000, '2022/10/06', 'New', 'ISBN1234.jpg'),
	('ISBN1235', '자바마스터', 30000, '송미영', '자바를 처음 배우는 학생을 위해 자바의 기본 개념과 실습 예제를 그림을 이용하여 쉽게 설명합니다. 자바의 이론적 개념→기본 예제→프로젝트 순으로 단계별 학습이 가능하며, 각 챕터의 프로젝트를 실습하면서 온라인 서점을 완성할 수 있도록 구성하였습니다.', '한빛아카데미', 'IT모바일', 1000, '2023/01/01', 'New', 'ISBN1235.jpg'),
	('ISBN1236', '파이썬 프로그래밍', 30000, '최성철', '파이썬으로 프로그래밍을 시작하는 입문자가 쉽게 이해할 수 있도록 기본 개념을 상세하게 설명하며, 다양한 예제를 제시합니다. 또한 프로그래밍의 기초 원리를 이해하면서 파이썬으로 데이터를 처리하는 기법도 배웁니다.', '한빛아카데미', 'IT모바일', 1000, '2023/01/01', 'New', 'ISBN1236.jpg');

SELECT * FROM book;

CREATE TABLE member (
	id VARCHAR(10),
	password VARCHAR(10) NOT NULL,
	name VARCHAR(10) NOT NULL,
	gender VARCHAR(4),
	birth VARCHAR(10),
	mail VARCHAR(30),
	phone VARCHAR(20),
	address VARCHAR(90),
	regist_day VARCHAR(50),
	PRIMARY KEY (id)
);

SELECT * FROM member;
DROP TABLE member;

USE bookmarketdb;

CREATE TABLE board (
	num INT AUTO_INCREMENT,         -- 게시글 순번
	id VARCHAR(10) NOT NULL,        -- 회원 아이디
	name VARCHAR(10) NOT NULL,      -- 회원 이름
	subject VARCHAR(100) NOT NULL,  -- 게시글 제목
	content TEXT NOT NULL,          -- 게시글 내용
	regist_day VARCHAR(30),         -- 게시글 등록 일자(실무에서는 DATETIME 권장)
	hit INT,                        -- 게시글 조회 수
	ip VARCHAR(20),                 -- 게시글 등록 시 IP
	PRIMARY KEY (num)
);

SELECT * FROM board;
DESC board;
DROP TABLE board;


INSERT INTO board (id, name, subject, content, regist_day, hit, ip) 
VALUES
	('user01', '홍길동', '첫 번째 게시글입니다', '게시판 테스트용 첫 번째 글입니다.', '2026-01-01 10:00', 3, '192.168.0.1'),
	('user02', '김철수', 'JSP 게시판 질문', 'JSP와 서블릿으로 게시판을 구현하고 있습니다.', '2026-01-01 10:10', 5, '192.168.0.2'),
	('user03', '이영희', '페이징 처리 방법', 'LIMIT와 OFFSET을 사용한 페이징 예제입니다.', '2026-01-01 10:20', 8, '192.168.0.3'),
	('user04', '박민수', '검색 기능 구현', 'LIKE 조건을 활용한 검색 기능 테스트.', '2026-01-01 10:30', 2, '192.168.0.4'),
	('user05', '최지은', '게시글 수정 관련', '게시글 수정 기능을 구현 중입니다.', '2026-01-01 10:40', 1, '192.168.0.5'),
	('user06', '정우성', '삭제 기능 문의', '게시글 삭제 로직에 대한 질문입니다.', '2026-01-01 10:50', 4, '192.168.0.6'),
	('user07', '한지민', 'MVC 패턴 적용', 'JSP/Servlet MVC2 패턴 적용 예시.', '2026-01-01 11:00', 6, '192.168.0.7'),
	('user08', '오세훈', 'DAO 설계 질문', 'DAO 싱글톤 패턴에 대해 궁금합니다.', '2026-01-01 11:10', 9, '192.168.0.8'),
	('user09', '윤아', 'PreparedStatement 사용법', '동적 쿼리 작성 시 주의사항.', '2026-01-01 11:20', 7, '192.168.0.9'),
	('user10', '서강준', '게시판 마무리', '게시판 프로젝트를 마무리합니다.', '2026-01-01 11:30', 0, '192.168.0.10'),
	('user11', '홍길순', '11 번째 게시글입니다', '게시판 테스트용 11 번째 글입니다.', '2026-01-01 11:40', 11, '192.168.0.11');

