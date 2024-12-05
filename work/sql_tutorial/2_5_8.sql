-- ここでも、結果行の順序は変動するかもしれません。
-- DISTINCTとORDER BYを一緒に使用することで確実に一貫した結果を得ることができます。
SELECT DISTINCT city
    FROM weather
    ORDER BY city;