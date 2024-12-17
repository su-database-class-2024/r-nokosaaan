-- ここまでの構文では、列の順番を覚えておく必要がありました。
-- 以下に示す他の構文では、列のリストを明示的に与えることができます。
INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
    VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');