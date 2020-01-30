
-- Query example:


SELECT country.country_name, indicators.indicator_name, values.value, values.year
FROM country
JOIN values
ON values.country_code = country.country_code
JOIN indicators
ON values.indicator_code = indicators.indicator_code
LIMIT 100;