-- link: https://console.cloud.google.com/bigquery?sq=365695971000:d7170f46a4b247bb8fd26ff9eb58eabd

-- SELECT *
-- FROM `bigquery-public-data.google_trends.international_top_terms`
-- WHERE refresh_date = "2024-05-12" LIMIT 1000;


-- 1. Мінімальна і максимальна дата/тиждень оновлення
SELECT
MAX(week) AS MAX_week,
MIN(week) AS min_week,
MAX(refresh_date) AS MAXIMAL_DATE
-- MIN(refresh_date) AS min_date
-- SUM(rank) SUM_of_RANKS
-- AVG()
FROM bigquery-public-data.google_trends.international_top_terms;

-- 2. Список всіх країн
SELECT
DISTINCT country_name AS COUNTRY_LIST
FROM bigquery-public-data.google_trends.international_top_terms
ORDER BY country_name  ASC;

--  3. Дані для певної країни
SELECT *
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = "Ukraine"
AND
-- refresh_date = "2024-04-10"
refresh_date = "2024-06-25"
AND
-- week = "2024-04-07"
week = "2024-06-23"
AND
region_name = "Vinnyts'ka oblast"
LIMIT 100;

-- 4. Список областей України
SELECT DISTINCT region_name, region_code
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = "Ukraine"
ORDER BY region_name ASC
;

-- 5. Список ранків для Вінницької області
SELECT DISTINCT region_name, region_code
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = "Ukraine"
ORDER BY region_name ASC
;


-- ДЗ2, Вправа 1: надати для твого регіону топ-25 запитів за минулий тиждень
SELECT *
FROM bigquery-public-data.google_trends.international_top_terms
WHERE country_name = "Ukraine"
AND
-- week = "2024-04-07"
refresh_date = "2024-06-25"
AND
week = "2024-06-23"
-- refresh_date = "2024-04-10"
AND
region_name = "Vinnyts'ka oblast"
-- AND rank = 1
ORDER BY rank ASC
-- LIMIT 25
;