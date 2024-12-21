/*
SELECT 이란?
SQL에서 데이터를 조회하기 위한 명령어
데이터베이스의 테이블에서 특정 열(colum) 또는 행(low)의 데이터를 검색하고, 결과를 반환하는 데 사용
*/

SELECT * FROM tbl_menu;

SELECT now();

SELECT concat('홍', '', '길동');
SELECT concat('홍', '', '길동') AS name;
SELECT concat('홍', '', '길동') AS 'Full name';