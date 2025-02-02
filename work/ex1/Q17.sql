--それぞれのカテゴリーについて、平均で何日借りられているか？

-- どのカテゴリーのDVDがよく借りられているかを調べたい。 カテゴリー毎に何本が借りられていて、どのくらいの売上（amount）があったか、をリストにせよ
SELECT DISTINCT c.category_id,AVG(DATE(r.return_date)-DATE(r.rental_date)) OVER (PARTITION BY c.category_id) AS AVG_rentaldate
    FROM category c 
        INNER JOIN film_category fc ON c.category_id=fc.category_id
        INNER JOIN film f           ON fc.film_id=f.film_id
        INNER JOIN inventory i      ON f.film_id=i.film_id
        INNER JOIN rental r         ON i.inventory_id=r.inventory_id
        INNER JOIN payment p        ON r.rental_id=p.rental_id
    ORDER BY c.category_id;

--DATEDIFF(DATE_PART(DATE,rental_date),'2005-05-30')
--SELECT rental_date,return_date,DATE(return_date)-DATE(rental_date) FROM rental r;