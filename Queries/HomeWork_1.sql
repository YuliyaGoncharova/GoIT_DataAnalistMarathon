-- https://console.cloud.google.com/bigquery?sq=365695971000:ccc558bb56464619991bfe585991dbfd

SELECT region_name, refresh_date, rank, score, week
FROM bigquery-public-data.google_trends.international_top_terms
LIMIT 100;