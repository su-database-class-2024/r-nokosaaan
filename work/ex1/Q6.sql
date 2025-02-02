-- filmテーブルから、ratingがPGかGであるデータの行数を求めよ
SELECT COUNT(rating) FROM film f
    WHERE f.rating='PG' or f.rating='G';