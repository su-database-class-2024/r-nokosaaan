--  顧客数と売上について国別にまとめよ。
SELECT DISTINCT co.country,COUNT(p.customer_id)OVER (PARTITION BY co.country) AS total_customer,SUM(p.amount) OVER (PARTITION BY co.country) AS total_amount
    FROM payment p
        INNER JOIN customer ct ON p.customer_id=ct.customer_id
        INNER JOIN address a   ON ct.address_id=a.address_id
        INNER JOIN city c      ON a.city_id=c.city_id
        INNER JOIN country co  ON c.country_id=co.country_id
    ORDER BY co.country;