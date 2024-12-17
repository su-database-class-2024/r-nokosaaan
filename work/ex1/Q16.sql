-- どのカテゴリーのDVDがよく借りられているかを調べたい。 カテゴリー毎に何本が借りられていて、どのくらいの売上（amount）があったか、をリストにせよ
SELECT DISTINCT c.category_id,COUNT(r.rental_id) OVER (PARTITION BY c.category_id) AS total_rental,SUM(p.amount) OVER (PARTITION BY c.category_id) AS total_amount
    FROM category c 
        INNER JOIN film_category fc ON c.category_id=fc.category_id
        INNER JOIN film f           ON fc.film_id=f.film_id
        INNER JOIN inventory i      ON f.film_id=i.film_id
        INNER JOIN rental r         ON i.inventory_id=r.inventory_id
        INNER JOIN payment p        ON r.rental_id=p.rental_id
    ORDER BY c.category_id;

-- カテゴリー確認用
--SELECT * FROM category;


