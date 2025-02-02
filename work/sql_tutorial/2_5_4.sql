-- 必要な行が何かを指定するWHERE句を追加して問い合わせに「条件付け」することができます。
-- WHERE句は論理（真値）式を持ち、この論理式が真となる行のみを返します。
-- よく使われる論理演算子（AND、OR、NOT）を条件付けに使用することができます。
-- 例えば以下は、San Franciscoの雨天時の気象データを取り出します。
SELECT * FROM weather
    WHERE city = 'San Francisco' AND prcp > 0.0;