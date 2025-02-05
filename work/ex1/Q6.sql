-- filmテーブルから、ratingがPGかGであるデータの行数を求めよ。
SELECT COUNT(*) FROM film WHERE rating = 'PG' or rating = 'G';