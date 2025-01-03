-- ここまでの問い合わせは、一度に1つのテーブルにのみアクセスするものでした。
-- 問い合わせは、一度に複数のテーブルにアクセスすることも、
-- テーブル内の複数の行の処理を同時に行うようなやり方で、1つのテーブルにアクセスすることも可能です。
-- 一度に複数のテーブル(または同一のテーブルの複数のインスタンス)にアクセスする問い合わせは、
-- 結合問い合わせと呼ばれます。
-- それらは1つのテーブルからの行を2つ目のテーブルからの行と、どの行同士を組み合わせるかを指定する式により、結び付けます。
-- 例えば、すべての気象データを関連する都市の位置情報と一緒にすべて返すためには、
-- データベースはweatherテーブルの各行のcity列を、citiesテーブルの全ての行のname列と比較することが必要です。
SELECT * FROM weather JOIN cities ON city = name;

-- この結果について2つのことに注目してください。
-- ・Hayward市についての結果行がありません。
-- これはcitiesテーブルにはHaywardに一致する項目がないからで、
-- 結合の際にweatherテーブル内の一致されなかった行は無視されるのです。
-- これをどうしたら解決できるかは、しばらく後で説明します。
-- ・都市名を持つ２つの列があります。
-- weatherテーブルとcitiesテーブルからの列のリストが連結されるため、これは正しい動作です。
-- しかし実際には、これは望ましい結果ではないため、*を使わずに、明示的に出力列のリストを指定することになるでしょう。