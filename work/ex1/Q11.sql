-- cityテーブルの各country_idに20以上のcityがあるものを示せ。
SELECT country_id,COUNT(city) FROM city
    GROUP BY country_id
    HAVING 20 <= COUNT(city);
