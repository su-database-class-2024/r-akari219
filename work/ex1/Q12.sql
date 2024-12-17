-- filmテーブルにおいて、最大のreplacement costとなる映画のタイトルを示せ。
SELECT title, replacement_cost from film ORDER BY replacement_cost DESC OFFSET 0 LIMIT 1;