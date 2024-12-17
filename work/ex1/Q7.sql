-- INをもちいて、actorテーブルからfirst_nameがAngela, Angelina, Audreyである行を抽出せよ。
SELECT * FROM actor WHERE first_name IN('Angela', 'Angelina', 'Audrey');