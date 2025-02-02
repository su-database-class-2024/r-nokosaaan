-- 2.6の問い合わせをもう一度参照してください。
-- 天候の記録と都市の所在場所を結合したリストを得ることが今作っているアプリケーションにとって特に重要なのですが、
-- この結合リストを必要とする度に問い合わせを打ち込みたくはないとしましょう。 
-- (JOINコマンドのこと)
-- この問い合わせに対してビューを作成し、通常のテーブルのように参照できる問い合わせに名前を付けることができます。
CREATE VIEW myview AS
    SELECT name, temp_lo, temp_hi, prcp, date, location
        FROM weather, cities
        WHERE city = name;