-- DELETEコマンドを使用してテーブルから行を削除することができます。
-- Haywardの気象を対象としなくなったとします。
-- その場合、以下のコマンドを使用して、テーブルから行を削除することができます。
DELETE FROM weather WHERE city = 'Hayward';

-- Haywardに関する気象データは全て削除されました。
SELECT * FROM weather;