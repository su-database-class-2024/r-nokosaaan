-- store_id, address, city nameを有するテーブルを、storeに address, cityテーブルを結合させることで作成せよ。
SELECT store_id,address,city --結合元のテーブルにある*しか表示できない。例：cityテーブルの*city_idは表示できない
    FROM store s, address a, city c
    WHERE s.address_id = a.address_id and a.city_id=c.city_id;