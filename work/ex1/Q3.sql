-- filmテーブルから、film_idが４以下のデータを抽出せよ
SELECT film_id,title FROM film f
    WHERE f.film_id <= 4;