-- UPDATEコマンドを使用して、既存の行を更新することができます。
-- 11月28日以降の全ての気温の読み取りが2度高くなっていることがわかったとします。
-- その場合、以下のコマンドによって、データを修正することができます。

UPDATE weather
    SET temp_hi = temp_hi - 2,  temp_lo = temp_lo - 2
    WHERE date > '1994-11-28';

-- データの更新後の状態を確認します。
SELECT * FROM weather;