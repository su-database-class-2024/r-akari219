-- filmテーブルから、ratingがPGかGであるデータから、はじめの5行を抽出せよ。
SELECT * FROM film WHERE rating = 'PG' or rating = 'G' OFFSET 0 LIMIT 5;