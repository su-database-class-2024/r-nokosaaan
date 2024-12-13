--  cityをcountry_idにより昇順に並べ替えよ。はじめの10都市を抽出するSQL文を記せ
SELECT city,country_id FROM city
    ORDER BY country_id LIMIT 10;
