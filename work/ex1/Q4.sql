-- filmテーブルから、ratingがPGであるデータを抽出し、はじめの5行のみを示せ
SELECT rating FROM film f
    WHERE f.rating='PG' LIMIT 5;