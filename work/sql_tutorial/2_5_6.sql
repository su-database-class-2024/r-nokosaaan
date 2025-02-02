-- この例では、ソート順は十分に指定されていません。 
-- ですので、San Franciscoの行は順序が異なるかも知れません。
-- しかし、次のようにすれば常に上記の結果になります。
SELECT * FROM weather
    ORDER BY city, temp_lo;