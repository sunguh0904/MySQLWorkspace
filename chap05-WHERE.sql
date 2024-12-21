/*
WHERE 이란?
SQL에서 데이터를 조회하거나 수정할 때 특정 조건을 지정하여 조건에 맞는 데이터만 처리하도록 하는 구문
주요 역할:
	1. 데이터를 필터링(filtering)하여 조건에 맞는 행만 조회, 수정, 삭제 또는 업데이트
    2. 조건을 충족하지 않는 데이터는 결과에서 제외
*/

-- orderable_status 값이 y인 값만 반환
SELECT
	menu_name,
    menu_price,
    orderable_status
FROM
	tbl_menu
WHERE
	orderable_status = 'y';
    
-- menu_price 값이 13000인 값만 반환
SELECT
	menu_name,
    menu_price,
    orderable_status
FROM
	tbl_menu
WHERE
	menu_price = 13000;
    
-- orderable_status 값이 y가 아닌 값만 반환
SELECT
	menu_name,
    menu_price,
    orderable_status
FROM
	tbl_menu
WHERE
	-- orderable_status <> 'y';
    orderable_status != 'y';
    
-- menu_price 값이 20000 이상인 값만 반환
SELECT
	menu_name,
    menu_price,
    orderable_status
FROM
	tbl_menu
WHERE
	menu_price >= 20000;
    
-- WHERE 절과 논리 연산자 활용
SELECT
	menu_name,
    menu_price,
    category_code,
    orderable_status
FROM
	tbl_menu
WHERE
	orderable_status = 'y'
    AND category_code = 10;
    
SELECT
	menu_name,
    menu_price,
    category_code,
    orderable_status
FROM
	tbl_menu
WHERE
	orderable_status = 'y'
    OR category_code = 10
ORDER BY
	category_code;
    
SELECT * FROM tbl_menu
WHERE
	menu_price > 5000
    OR category_code = 10;
    
SELECT * FROM tbl_menu
WHERE
	category_code = 4
    OR menu_price = 9000
    AND menu_code > 10;
    
SELECT
	menu_name,
    menu_price,
    category_code
FROM
	tbl_menu
WHERE
	menu_price >= 10000
    AND menu_price <= 25000
ORDER BY
	menu_price;
    
-- menu_price 값이 10000 ~ 25000 사이의 값 반환
SELECT
	menu_name,
    menu_price,
    category_code
FROM
	tbl_menu
WHERE
	menu_price BETWEEN 10000 AND 25000
ORDER BY
	menu_price;
    
-- menu_price 값이 10000 ~ 25000 사이가 아닌 값 반환
SELECT
	menu_name,
    menu_price,
    category_code
FROM
	tbl_menu
WHERE
	menu_price NOT BETWEEN 10000 AND 25000
ORDER BY
	menu_price;
    
-- '%': 0개 이상의 임의의 문자, 마늘 앞뒤로 뭐가 오든 마늘이란 텍스트가 포함되면 반환
SELECT
	menu_name,
    menu_price
FROM
	tbl_menu
WHERE
	menu_name LIKE '%마늘%';
    
SELECT * FROM tbl_menu
WHERE
	menu_price > 5000
    AND category_code = 10
    AND menu_name LIKE '%갈치%';
    
SELECT
	menu_name,
    menu_price
FROM
	tbl_menu
WHERE
	menu_name NOT LIKE '%마늘%'
ORDER BY
	menu_name;
    
SELECT
	menu_name,
    category_code
FROM
	tbl_menu
WHERE
	category_code = 4
    OR category_code = 5
    OR category_code = 6
ORDER BY
	category_code;

-- IN 함수
SELECT
	menu_name,
    category_code
FROM
	tbl_menu
WHERE
	-- category_code 값에 4, 5, 6이 포함된 값만 반환
	category_code IN (4, 5, 6)
    
    -- category_code 값에 4, 5, 6이 포함되지 않은 값만 반환
	-- category_code NOT IN (4, 5, 6)
ORDER BY
	category_code;