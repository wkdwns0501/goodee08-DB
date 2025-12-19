-- 게시판 데이터베이스 생성
CREATE DATABASE jdbc_board;
USE jdbc_board;

-- 게시판 테이블 생성
CREATE TABLE board (
	no INT AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	writer VARCHAR(100) NOT NULL,
	content TEXT,
	reg_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	upd_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	-- ON UPDATE CURRENT_TIMESTAMP: UPDATE 시 자동으로 수정 시간도 갱신
	PRIMARY KEY (no)
);

DESC board;

-- 데이터 추가
INSERT INTO board (title, writer, content)
VALUES 
	('게시글 제목1', '김재', '집에 가고 싶다.'),
  	('게시글 제목2', '현', '집에 안가');

INSERT INTO board (title, writer, content)
VALUES 
	('게시글 제목3', '작성자1', '집에 가고 싶다.'),
  	('게시글 제목4', '작성자2', '집에 가'),
  	('게시글 제목5', '작성자3', '집 가');

-- 데이터 조회
SELECT * FROM board; -- 전체 게시글 목록 조회
SELECT * FROM board WHERE no = 1; -- 특정 게시글 조회

-- 데이터 수정
UPDATE board
SET 
	title = '게시글 제목1 - 수정',
  	content = '나 먼저감'
--   	upd_date = now() -- 수정일을 현재 시간으로 갱신
WHERE no = 1;

-- 데이터 삭제
DELETE FROM board WHERE no = 1;

-- 댓글 테이블
CREATE TABLE comment (
	id INT AUTO_INCREMENT,
	board_no INT NOT NULL,
	commenter VARCHAR(50) NOT NULL,
	comment TEXT,
	reg_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	FOREIGN KEY (board_no) REFERENCES board(no) ON DELETE CASCADE
	-- ON DELETE CASCADE: 외래키(FK)에 설정하는 옵션으로
	-- 부모 테이블의 행이 삭제될 때, 해당 행을 참조하는 자식 테이블의 행들도 자동으로 삭제
	-- 예: board의 특정 게시글이 삭제되면 그 게시글에 달린 댓글들도 자동으로 삭제
);
