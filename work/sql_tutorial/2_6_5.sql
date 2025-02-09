-- ここで、どのようにすればHaywardのレコードを得ることができるようになるのかを明らかにします。
-- 実行したい問い合わせは、weatherをスキャンし、各行に対して、cities行に一致する行を探すというものです。
-- 一致する行がなかった場合、citiesテーブルの列の部分を何らかの「空の値」に置き換えたいのです。
--  この種の問い合わせは外部結合と呼ばれます。 （これまで示してきた結合は内部結合です。）
SELECT *
    FROM weather LEFT OUTER JOIN cities ON weather.city = cities.name;

-- この問い合わせは左外部結合と呼ばれます。
-- 結合演算子の左側に指定したテーブルの各行が最低でも一度出力され、一方で、右側のテーブルでは左側のテーブルの行に一致するもののみが出力されるからです。
-- 右側のテーブルに一致するものがない、左側のテーブルの行を出力する時、右側のテーブルの列は空の値（NULL）で置換されます。
-- 練習:  右外部結合や完全外部結合も存在します。 これらが何を行うかを考えてください。