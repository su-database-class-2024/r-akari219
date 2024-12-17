-- cityをcountry_idにより昇順に並べ替えよ。はじめの10都市を抽出するSQL文を記せ。
SELECT * FROM city ORDER BY country_id OFFSET 0 LIMIT 10;