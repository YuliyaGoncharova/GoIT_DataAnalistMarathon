SELECT *
FROM bigquery-public-data.google_trends.international_top_terms
LIMIT 100;

SELECT country_name, term
FROM bigquery-public-data.google_trends.international_top_terms
LIMIT 100;