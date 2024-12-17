-- cityテーブルの各country_idに20以上のcityがあるものを示せ。
SELECT country_id, COUNT(*) FROM city GROUP BY country_id HAVING COUNT(*) >= 20;