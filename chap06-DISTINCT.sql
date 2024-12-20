-- DISTINCT
-- 중복된 값을 제거하는 데 사용

SELECT
	category_code
FROM
	tbl_menu
ORDER BY
	category_code;

-- category_code 값 중복 제거
SELECT DISTINCT
	category_code
FROM
	tbl_menu
ORDER BY
	category_code;
    
SELECT DISTINCT
	ref_category_code
FROM
	tbl_category;
    
-- 다중열 중복제거 사용
SELECT
	category_code,
    orderable_status
FROM
	tbl_menu;
    
SELECT DISTINCT
	category_code,
    orderable_status
FROM
	tbl_menu;