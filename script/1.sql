SELECT SUM(DATA_LENGTH) AS Сумма_Data,
SUM(INDEX_LENGTH) AS Сумма_Index,
CONCAT(ROUND((SUM(INDEX_LENGTH) / SUM(DATA_LENGTH)) *100), '%')  AS '% Отношение'
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'sakila';
