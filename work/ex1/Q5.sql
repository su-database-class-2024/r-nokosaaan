-- filmテーブルから、ratingがPGかGであるデータから、はじめの5行を抽出せよ
SELECT rating FROM film f
    WHERE f.rating='PG' or f.rating='G' LIMIT 5;