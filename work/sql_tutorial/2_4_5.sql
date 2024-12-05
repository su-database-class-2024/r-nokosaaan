-- また、COPYを使用して大量のデータを平文テキストファイルからロードすることもできます。
--  COPYコマンドはINSERTよりも柔軟性はありませんが、この目的に特化していますので、通常、より高速になります。
COPY weather FROM '/home/user/weather.txt';