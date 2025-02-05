-- どのカテゴリーのDVDがよく借りられているかを調べたい。 カテゴリー毎に何本が借りられていて、どのくらいの売上（amount）があったか、をリストにせよ。
SELECT category.category_id, category.name, COUNT(rental.rental_id) AS rental_count, SUM(payment.amount) AS total_amount
-- SELECT COUNT(*)
FROM rental
LEFT OUTER JOIN inventory ON inventory.inventory_id = rental.inventory_id
LEFT OUTER JOIN payment ON rental.rental_id = payment.rental_id
LEFT OUTER JOIN film ON film.film_id = inventory.inventory_id
LEFT OUTER JOIN film_category ON film.film_id = film_category.film_id
LEFT OUTER JOIN category ON film_category.category_id = category.category_id
GROUP BY category.category_id, category.name
ORDER BY category.category_id;