-- cityテーブルにリストされているcityのうち、addressが紐付いていないのはどれか？
SELECT address, city
FROM city
LEFT OUTER JOIN address ON city.city_id = address.city_id
WHERE address is NULL;