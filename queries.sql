CREATE TABLE countries(
country_code TEXT PRIMARY KEY,
country_name TEXT);

CREATE TABLE indicators(
indicator_name TEXT,
indicator_code TEXT PRIMARY KEY);

CREATE TABLE values(
country_name TEXT,
country_code TEXT,
indicator_code TEXT,
value FLOAT NOT NULL,
year INT);

SELECT values.country_name, countries.country_code, indicators.indicator_code, values.value, values.year
FROM countries
JOIN values
ON values.country_code = countries.country_code
JOIN indicators
ON values.indicator_code = indicators.indicator_code;
