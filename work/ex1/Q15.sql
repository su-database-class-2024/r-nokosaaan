--cityテーブルにリストされているcityのうち、addressが紐付いていないのはどれか？

SELECT c.city_id,city
    FROM city c 
    WHERE c.city_id NOT IN
    (
        SELECT a.city_id
        FROM address a
    )

--確認用
--cityテーブルではLondonが表示される(city_id=313)
--SELECT *
--    FROM city c
--    WHERE c.city_id=313;

--addressテーブルでは何も表示されない
--SELECT *
--    FROM address a
--    WHERE a.city_id=313;
    
    