-- 選択リストには、単なる列参照だけではなく式を指定することもできます。
SELECT city, (temp_hi+temp_lo)/2 AS temp_avg, date FROM weather;

-- AS句を使用した出力列の再ラベル付けの部分に注意してください （AS句は省略することができます）。
