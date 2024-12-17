-- filmテーブルから、ratingがPGであるデータを抽出し、はじめの5行のみを示せ。
SELECT * FROM film WHERE rating = 'PG' OFFSET 0 LIMIT 5;