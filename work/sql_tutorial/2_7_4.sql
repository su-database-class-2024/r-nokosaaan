-- 以下のように、HAVINGを使用すると、グループ化された行にフィルタをかけることができます。
SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city
    HAVING max(temp_lo) < 40;