GRANT ALL PRIVILEGES ON menudb.* TO 'uhyeon'@'%';
-- 새로운 사용자 및 암호 생성

SHOW DATABASES;
-- 현재 MySQL 서버에 있는 모든 데이터베이스를 확인

CREATE DATABASE menudb;
-- 새로운 데이터베이스를 생성

USE menudb;
-- MySQL에서 사용할 데이터베이스 선택

GRANT ALL PRIVILEGES ON menudb.* TO 'uhyeon'@'%';
-- 사용자에게 데이터베이스에 대한 권한 부여

SHOW GRANTS FOR 'uhyeon'@'%';
-- 사용자에게 부여된 권한 확인