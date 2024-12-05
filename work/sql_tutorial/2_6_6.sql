-- テーブルを自分自身に対して結合させることができます。
-- これは自己結合と呼ばれます。
-- 例として、他の気象データの気温範囲内にある気象データを全て取り出すことを考えます。
-- weather各行のtemp_loとtemp_hiを、他のweather行のtemp_loとtemp_hi列とを比較しなければなりません。
SELECT w1.city, w1.temp_lo AS low, w1.temp_hi AS high,
       w2.city, w2.temp_lo AS low, w2.temp_hi AS high
    FROM weather w1 JOIN weather w2
        ON w1.temp_lo < w2.temp_lo AND w1.temp_hi > w2.temp_hi;