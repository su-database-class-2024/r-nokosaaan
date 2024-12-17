-- cityテーブルには各country_idにいくつのcityがあるか？大きい順に並べよ
SELECT country_id,COUNT(city) FROM city
    GROUP BY country_id
    ORDER BY COUNT(city) DESC;