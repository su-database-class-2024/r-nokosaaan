CREATE TABLE cities (
        name     varchar(80) primary key,-- 主キー
        location point
);

CREATE TABLE weather (
        city      varchar(80) references cities(name),-- 参照キー
        temp_lo   int,
        temp_hi   int,
        prcp      real,
        date      date
);

-- citiesテーブルのnameに無いものはweatherテーブルのnameに追加できない
-- 例:INSERT INTO weather VALUES ('Berkeley', 45, 53, 0.0, '1994-11-28');
-- を入力すると以下のエラー文が出る
-- ERROR:  insert or update on table "weather" violates foreign key constraint "weather_city_fkey"
-- DETAIL:  Key (city)=(Berkeley) is not present in table "cities".
