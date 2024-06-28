-- link to query:  https://console.cloud.google.com/bigquery?sq=365695971000:0b43c151f2374f11a9d3e700fd6d5c77
SELECT
-- *
DISTINCT term
FROM bigquery-public-data.google_trends.international_top_terms
WHERE
region_name = "Vinnyts'ka oblast"
AND
term LIKE "%2024%"
--AND refresh_date = "2024-06-27"
ORDER BY term DESC
;