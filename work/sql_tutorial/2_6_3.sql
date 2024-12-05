-- 列がすべて異なる名前だったので、パーサは自動的にどのテーブルの列かを見つけることができました。
-- つのテーブルで列名が重複している場合は、以下のようにどちらの列を表示させたいかを示すために列名を修飾しなければなりません。
SELECT weather.city, weather.temp_lo, weather.temp_hi,
       weather.prcp, weather.date, cities.location
    FROM weather JOIN cities ON weather.city = cities.name;

-- 結合問い合わせではすべての列名を修飾するのが良いやり方であると一般に考えられています。
-- そうすれば、テーブルのいずれかに後で重複する名前を持つ列が追加されても、問い合わせが失敗しません。
