-- 顧客数と売上について国別にまとめよ。
SELECT country.country_id, country.country, COUNT(rental_id) AS customer_count, SUM(payment.amount) AS total_amount
FROM payment
LEFT OUTER JOIN customer ON payment.customer_id = customer.customer_id
LEFT OUTER JOIN address ON customer.address_id = address.address_id
LEFT OUTER JOIN city ON address.city_id = city.city_id
LEFT OUTER JOIN country ON city.country_id = country.country_id
GROUP BY country.country_id
ORDER BY country.country_id;