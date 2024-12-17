-- それぞれのカテゴリーについて、平均で何日借りられているか？
-- ヒント：date型から日付を取り出すには DATE_PART を用います
SELECT category.category_id, category.name, AVG(DATE_PART('day', return_date - rental_date)) AS avg_rental_days
-- SELECT COUNT(*)
FROM rental
LEFT OUTER JOIN inventory ON inventory.inventory_id = rental.inventory_id
LEFT OUTER JOIN payment ON rental.rental_id = payment.rental_id
LEFT OUTER JOIN film ON film.film_id = inventory.inventory_id
LEFT OUTER JOIN film_category ON film.film_id = film_category.film_id
LEFT OUTER JOIN category ON film_category.category_id = category.category_id
GROUP BY category.category_id, category.name
ORDER BY category.category_id;