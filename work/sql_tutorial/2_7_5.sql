-- このコマンドは2_7_4と同じ計算を行うものですが、
-- 全てのtemp_loの値が40未満の都市のみを出力します。
-- 最後になりますが、「S」から始まる名前の都市のみを対象にしたい場合は、以下を行います。

SELECT city, max(temp_lo)
    FROM weather
    WHERE city LIKE 'S%'            -- (1)
    GROUP BY city
    HAVING max(temp_lo) < 40;

--(1) LIKE演算子はパターンマッチを行います。これについては9.7で説明します。

-- 集約とSQLのWHEREとHAVING句の間の相互作用を理解することが重要です。
-- WHEREとHAVINGの基本的な違いは、WHEREが、グループや集約を演算する前に入力行を選択する（したがって、これはどの行を使用して集約演算を行うかを制御します）のに対し、
-- HAVINGは、グループと集約を演算した後に、グループ化された行を選択する、ということです。
-- したがって、WHERE句は集約関数を持つことはできません。
-- 集約を使用して、どの行をその集約の入力にするのかを決定することは意味をなしません。
-- 一方で、HAVING句は常に集約関数を持ちます （厳密に言うと、集約を使用しないHAVING句を書くことはできますが、これは有用となることはほぼありません。 同じ条件はWHEREの段階でもっと効率良く使用できます）。
-- 前の例ではWHERE内に都市名の制限を適用することができます。
-- 集約を行う必要がないからです。
-- これはHAVINGに制限を追加するよりも効率的です。
-- なぜならWHEREの検査で失敗する全ての行についてグループ化や集約演算が行われないからです。

