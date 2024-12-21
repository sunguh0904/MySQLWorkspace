/*
ORDER BY 란?
SQL에서 데이터를 정렬하는 데 사용되는 명령어
특정 열을 기준으로 조회된 데이터를 오름차순(ASC)또는 내림차순(DESC)으로 정렬할 수 있음
*/

-- 오름차순
SELECT
	menu_code,
    menu_name,
    menu_price
FROM
	tbl_menu
ORDER BY
	menu_price ASC;
    
-- 내림차순
SELECT
	menu_code,
    menu_name,
    menu_price
FROM
	tbl_menu
ORDER BY
	menu_price DESC;

-- 가격 내림차순, 이름 오름차순
SELECT
	menu_code,
    menu_name,
    menu_price
FROM
	tbl_menu
ORDER BY
	menu_price DESC,
    menu_name ASC;
    
-- 곱을 계산하여 그 값을 기준으로 데이터를 정렬
SELECT
	menu_code,
    menu_price,
    menu_code * menu_price
FROM
	tbl_menu
ORDER BY
	menu_code * menu_price;

-- field() 함수는 특정 값이 리스트에서 몇 번째에 위치에 있는지 반환
-- A는 1번 째에 있음
SELECT field('A', 'A', 'B', 'C');
-- B는 2번 째에 있음
SELECT field('B', 'A', 'B', 'C');

-- 테이블의 각 행에서 orderable_status 값이 리스트('Y', 'N')에서 몇 번째에 있는지 확인
SELECT
	field(orderable_status, 'N', 'Y')
FROM
	tbl_menu;

-- 테이블의 각 행에서 orderable_status 값을 기준으로 오름차순 정렬
SELECT
	menu_name,
    orderable_status
FROM
	tbl_menu
ORDER BY field(orderable_status, 'N', 'Y');

-- 각 컬럼에서 ref_category_code 값이 Null인지 확인
SELECT
	category_code,
    category_name,
    ref_category_code
FROM
	tbl_category
ORDER BY
	-- Null 값이 위로 옴
	-- ref_category_code;    
    -- Null 값이 아래로 감
	ref_category_code is NULL;
    
SELECT
	category_code,
    category_name,
    ref_category_code
FROM
	tbl_category
ORDER BY
	-- ref_category_code DESC;
	ref_category_code is NULL DESC;