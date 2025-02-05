-- cityテーブルには各country_idにいくつのcityがあるか？大きい順に並べよ。
-- SELECT * FROM city ORDER BY country_id DESC;
SELECT country_id, COUNT(*) FROM city GROUP BY country_id ORDER BY country_id DESC;